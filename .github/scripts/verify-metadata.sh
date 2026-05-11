#!/usr/bin/env bash
#
# Enforces: the most recent commit touching template.tpl must have its SHA
# recorded as the top entry of metadata.yaml's `versions:` list.
#
# Runs in CI (.github/workflows/verify-metadata.yml) and is also runnable
# locally:  bash .github/scripts/verify-metadata.sh
#
# Exit codes: 0 in sync; 1 out of sync or parse error.

set -euo pipefail

repo_root=$(git rev-parse --show-toplevel)
cd "$repo_root"

latest_tpl_sha=$(git log -1 --format=%H -- template.tpl)
if [ -z "$latest_tpl_sha" ]; then
  echo "::error::No commit found touching template.tpl"
  exit 1
fi

top_metadata_sha=$(awk '
  /^versions:/ { flag=1; next }
  flag && /^[[:space:]]*-[[:space:]]*sha:/ {
    sub(/^[[:space:]]*-[[:space:]]*sha:[[:space:]]*/, "")
    sub(/[[:space:]]*$/, "")
    print
    exit
  }
' metadata.yaml)

if [ -z "$top_metadata_sha" ]; then
  echo "::error::Could not find a top 'sha:' entry under 'versions:' in metadata.yaml"
  exit 1
fi

echo "Latest template.tpl commit: $latest_tpl_sha"
echo "Top metadata.yaml SHA:      $top_metadata_sha"

if [ "$latest_tpl_sha" != "$top_metadata_sha" ]; then
  cat <<EOF >&2
::error::metadata.yaml top SHA ($top_metadata_sha) does not match the most recent commit touching template.tpl ($latest_tpl_sha).

Add a new entry at the top of the 'versions:' list in metadata.yaml, before the existing entries:

  - sha: $latest_tpl_sha
    changeNotes: <describe what changed in template.tpl>

Then commit that update and push. The GTM template gallery uses the top SHA
in metadata.yaml as the released version, so without this update the template
change will not ship.
EOF
  exit 1
fi

echo "metadata.yaml is in sync with template.tpl"
