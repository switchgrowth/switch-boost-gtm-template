___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Switch Boost",
  "brand": {
    "id": "switch_boost",
    "displayName": "Switch Boost Activation Template",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAJYAAACXCAYAAAD3XaJHAAAACXBIWXMAAAWJAAAFiQFtaJ36AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAARaSURBVHgB7d3LTRtRFIDhAw7seGTHAiyngyQVkDSQdJBHA0E0wKMCqABSAXRAssuSVIBlQGIVHC+RsHMuYSJAZjwOnplz7v0/yXIkZ8Hil8/4Hj9EAAAAAAAAAAAAAAAAAAAAAAAAEjIluKfZbH7RuzW9tfTW1tt+r9fb7SpBYYR1h0a1oXebQx467nQ6rwSFNQQ3lpaWWo1G4/CxhxcWFn6rH4JCpgU3Zmdnj0b8l1VBYYQl/0ZgK+//TE1NLQgKSz6sMAJl+HUVniD5sGZmZvYEE5d0WCsrKx91xK0KJi7ZsMII1Kg2BKVINiwdgZsy4oId/y/JsG5H4AdBaZILa1ExAsuXXFjz8/Mjz6zwdEmFdXtmtSYoXVJhFVjbYEKSCavI2gaTk0RYrG2ql0RYOgIPBJWKPqxwZqV3LwWVijos1jb1iTos1jb1iTYs1jb1ijIsRmD9ogxLXwWGj3C1BLWJLizWNjZEFxZrGxuiCou1jR3RhMXaxpZowmIE2hJFWLdf5NESmOE+LF4F2uQ+LNY2NrkOi7WNXW7DYm1jm9uwGIG2uQxreXl5lRFom8uwpqen+YYY49yFxdrGB1dhsbbxw1VYrG38cBMWaxtfXITFCPTHRVi3Z1aLAjfMh8XaxifTYbG28ct0WKxt/DIbFmsb38yGxdrGN5Nhsbbxz+oz1keBa1bDaglcsxpWW+Ca1bC+Clwz+5vQeuK+b+y4oat/z7EYMBgMfl5dXe1cXFy0xSjTPzYe1jl67PCu3+/XvifUqMLfYOm7TLvX19dvzs/PTcT+EL9iX1A4sNXIrb0frNvr9V50lRjDb0L7tjg3N/deDCIs53REt8QgwvLvRAwiLN9O9LrvuxhEWL5ttZUY9Ezgkp5lHZ2enpo9SOYZy6lGo/FZDCMsn8yOwAxh+XPS6XQ2xTjCckZfBb4VBwjLlx3rIzBDWH6EM6stcYKw/AgX7OaWzY8hLAd0H7ivF+yu3vxIWPadaFhuRmCGsOwzf2Y1DCsdw3Rtc2B5bZOHZyzDdG2zLk4Rll0uR2CGsGxysbbJQ1gGeVnb5CEse1yPwAxh2RLWNjsSAcIyRI8X1j2tbfIQlhFhbaNnVocSCcKyweXaJg9h2RDFBftdhFUzj+9cKIKw6tWNbQRmCKteu7GNwAxh1cf92iYPYdUkhrVNHsKqR3SvAh8irOpFPQIzhFWxfr9v+jsXJoWwKhTOrM7Ozr5JAgirOtGtbfIQVnWiv2C/i7AqEOvaJg9hle8ypRGYIazybac0AjOEVa5wZhXFW43HRVglin1tk4ewypPUq8CHCKscSaxt8hBWCXRt80kSR1iTt6drG5M/Q1Ilwpqs8IHTbQFhFTUYDEZ9kHSgt82UL9jv4hdWx9BsNn/p3fMhD4WowtomibfEFMEz1hj0WSuEMxjyUJsReB9hjSF8BF4Deh1+eUv+BnYZ/h0OQhmBAAAAAAAAAAAAAAAAAAAAAAAAACbrD87ZGJzFdja/AAAAAElFTkSuQmCC"
  },
  "description": "A template for installing Switch Boost.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "pixelCode",
    "displayName": "Switch Pixel ID",
    "simpleValueType": true,
    "help": "This is your Switch account\u0027s pixel ID. If you don\u0027t know your pixel ID, please reach out to your Switch representative.",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "pixelUrl",
    "displayName": "First Party Pixel Domain",
    "simpleValueType": true,
    "help": "This value should only be set if Switch has setup the Boost pixel to fire from within the clients infrastructure via DNS records. \u003cstrong\u003eDefaults to api.s10h.io\u003c/strong\u003e",
    "valueHint": "pixel.clientwebsite.com (no https or slashes needed)"
  },
  {
    "type": "CHECKBOX",
    "name": "automaticMode",
    "checkboxText": "Automatic Mode",
    "simpleValueType": true,
    "help": "Automatic mode will monitor the page and capture advertising identifiers automatically for submission.",
    "defaultValue": true
  },
  {
    "type": "TEXT",
    "name": "sessionLimit",
    "displayName": "Session Size Limit",
    "simpleValueType": true,
    "defaultValue": 4048,
    "help": "The maximum bytes that a session size can be.",
    "valueUnit": "bytes"
  },
  {
    "type": "TEXT",
    "name": "excludedIds",
    "displayName": "CSS Element IDs to exclude",
    "simpleValueType": true,
    "textAsList": true,
    "help": "Enter IDs (one per line) that Boost should ignore",
    "lineCount": 10
  },
  {
    "type": "TEXT",
    "name": "excludedAttributes",
    "displayName": "Attributes to exclude",
    "simpleValueType": true,
    "textAsList": true,
    "help": "Specific attrubytes (like gclid, ipaddress, etc) that Boost should not collect",
    "lineCount": 10
  },
  {
    "type": "TEXT",
    "name": "excludedInputTypes",
    "displayName": "Input Types to Exclude",
    "simpleValueType": true,
    "textAsList": true,
    "help": "Input types Boost should ignore. By default, Boost ignores password, hidden and file input types.",
    "lineCount": 5
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const injectScript = require('injectScript');
const encodeUriComponent = require('encodeUriComponent');
const log = require('logToConsole');
const setInWindow = require('setInWindow');
const copyFromWindow = require('copyFromWindow');
const createQueue = require('createQueue');
const getUrl = require('getUrl');

const pixelId = data.pixelCode;
const pixelUrl = data.pixelUrl;
const excludedIds = data.excludedIds || "";
const excludedInputTypes = data.excludedInputTypes || "";
const excludedAttributes = data.excludedAttributes || "";
const automaticMode = data.automaticMode;
const sessionLimit = data.sessionLimit;
const cacheKey = "switch-" + pixelId;

// sg_debug=1 in the page URL turns on the queue-lifecycle logs below.
// Mirrors the gating in pixel/src/debug.ts so one URL flag controls both
// halves of the stub -> pixel-drain timeline.
const queryString = getUrl('query') || '';
const debugEnabled = queryString.indexOf('sg_debug=1') !== -1;
function dlog() {
  if (!debugEnabled) return;
  // logToConsole has no .apply in the sandboxed runtime - switch on arity.
  if (arguments.length === 1) { log(arguments[0]); return; }
  if (arguments.length === 2) { log(arguments[0], arguments[1]); return; }
  if (arguments.length === 3) { log(arguments[0], arguments[1], arguments[2]); return; }
  log(arguments[0], arguments[1], arguments[2], arguments[3]);
}

// Pre-load event queue.
//
// Before pixel.js loads, this template:
//   1. Initializes a page-side global array at window.__sgQueue via GTM's
//      createQueue API. This array survives the sandbox boundary, so both the
//      sandboxed stub methods (below) and page-context pixel.js read/write the
//      same array. A closure array attached to the stub would not — GTM's
//      setInWindow copies objects across the sandbox boundary rather than
//      exposing them by reference.
//   2. Installs a stub on window.Switch whose methods push [methodName, args]
//      to window.__sgQueue.
//
// When pixel.js arrives, its drainQueueIntoSwitch() reads window.__sgQueue,
// replays each buffered call on the real Switch instance, swaps window.Switch
// over, and marks __sgReady=true.
//
// Keep this `methods` array in sync with QUEUEABLE_METHODS in
// pixel/src/eventQueue.ts. Anything missing here will throw TypeError if
// called pre-load.
function installSwitchStub() {
  const existing = copyFromWindow("Switch");
  if (existing && existing.__sgReady) {
    dlog("[queue] real Switch already loaded, stub install skipped");
    return;
  }

  // createQueue is idempotent: repeated calls return a push function tied to
  // the same window.__sgQueue array, so multiple Switch Boost tags across
  // containers all cooperate without conflict.
  const pushSgQueue = createQueue('__sgQueue');

  const stub = {};
  const methods = [
    "sendEvent",
    "sendTemplateEvent",
    "sendManualCapture",
    "setSecureCookieValues",
    "getSecureCookieValues",
    "deleteSecureCookie",
    "sha256",
    "transactionId",
    "getUserAgent",
    "getIp"
  ];
  methods.forEach(function (m) {
    stub[m] = function () {
      const args = [];
      for (let i = 0; i < arguments.length; i++) args.push(arguments[i]);
      dlog("[queue] buffering", m, args);
      pushSgQueue([m, args]);
    };
  });
  setInWindow("Switch", stub, true);
  dlog("[queue] stub installed (" + methods.length + " methods)");
}

function localSuccess(script) {
  log("Loaded:", script);
}

function localFail(script) {
  log("Failed:", script);
}

function embedScripts(onSuccess, onFail) {
  const scriptsToEmbed = [];
  let options = "";

  if (excludedIds.length > 0) {
    options += "&skipped-input-ids=" + excludedIds.toString();
  }

  if (excludedAttributes.length > 0) {
    options += "&excluded-attributes=" + excludedAttributes.toString();
  }

  if (excludedInputTypes.length > 0 ) {
    options += "&skipped-input-types=" + excludedInputTypes.toString();
  }

  let autoQuery = automaticMode ? "&auto=true" : "&auto=false";
  options += autoQuery;

  // pixel.js floors the value to 500 minimum on the receiving side
  options += "&session-byte-limit=" + sessionLimit;

  const urlForPixel = pixelUrl ? pixelUrl : 'api.s10h.io';
  scriptsToEmbed.push('https://' + urlForPixel + '/pixel.js?id=' + encodeUriComponent(pixelId) + options);
  log("Scripts to embed:", scriptsToEmbed);

  while(scriptsToEmbed.length) {
    let script = scriptsToEmbed.pop();
    injectScript(script,
                 function() { localSuccess(script); },
                 function() { localFail(script); },
                 cacheKey
                );
  }

  if (scriptsToEmbed.length === 0) {
    onSuccess();
  } else {
    onFail();
  }
}

// Install the queue stub before kicking off pixel.js download.
installSwitchStub();

embedScripts(
  () => {
    log("Switch Boost embedded");
    data.gtmOnSuccess();
  },
  () => {
    log("Switch Boost unable to initialize");
    data.gtmOnFailure();
  }
);


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://*.s10h.io/*"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "Switch"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "__sgQueue"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "get_url",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urlParts",
          "value": {
            "type": 1,
            "string": "any"
          }
        },
        {
          "key": "queriesAllowed",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Has a Pixel ID
  code: |2-


    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
- name: Queue Event Test
  code: |
    let installedSwitch = null;
    const sgQueue = [];

    mock('copyFromWindow', (key) => key === 'Switch' ? installedSwitch : undefined);
    mock('setInWindow', (key, value) => {
      if (key === 'Switch') installedSwitch = value;
      return true;
    });
    // Model createQueue's idempotency: every call returns a push function tied
    // to the same underlying array. In production this is window.__sgQueue.
    mock('createQueue', () => function (entry) { sgQueue.push(entry); });
    mock('injectScript', (url, onSuccess) => onSuccess());

    // First Boost run installs the stub.
    runCode({ pixelCode: "test_pixel_id" });

    // Realtime Event tag fires between Boost runs and queues a call.
    installedSwitch.sendEvent('api-key', 'pipeline-A', { foo: 'bar' });
    assertThat(sgQueue.length).isEqualTo(1);

    // Second Boost run must NOT wipe the queue. The stub on window.Switch may
    // be a new instance (we no longer short-circuit on existing.__queue), but
    // createQueue's idempotency guarantees the queue itself persists.
    runCode({ pixelCode: "test_pixel_id" });

    assertThat(sgQueue.length).isEqualTo(1);
    assertThat(sgQueue[0][0]).isEqualTo('sendEvent');
    assertThat(sgQueue[0][1][0]).isEqualTo('api-key');

    // New stub from the second run is still functional and pushes to the same queue.
    installedSwitch.transactionId();
    assertThat(sgQueue.length).isEqualTo(2);
    assertThat(sgQueue[1][0]).isEqualTo('transactionId');
- name: Queue Event Idempotency Test
  code: |
    let installedSwitch = null;
    const sgQueue = [];

    mock('copyFromWindow', (key) => key === 'Switch' ? installedSwitch : undefined);
    mock('setInWindow', (key, value) => {
      if (key === 'Switch') installedSwitch = value;
      return true;
    });
    // Model createQueue's idempotency: every call returns a push function tied
    // to the same underlying array. In production this is window.__sgQueue.
    mock('createQueue', () => function (entry) { sgQueue.push(entry); });
    mock('injectScript', (url, onSuccess) => onSuccess());

    // First Boost run installs the stub.
    runCode({ pixelCode: "test_pixel_id" });

    // Realtime Event tag fires between Boost runs and queues a call.
    installedSwitch.sendEvent('api-key', 'pipeline-A', { foo: 'bar' });
    assertThat(sgQueue.length).isEqualTo(1);

    // Second Boost run must NOT wipe the queue.
    // The stub on window.Switch may be a new instance (we no longer short-circuit
    // on existing.__queue), but createQueue's idempotency guarantees the queue
    // itself persists.
    runCode({ pixelCode: "test_pixel_id" });

    assertThat(sgQueue.length).isEqualTo(1);
    assertThat(sgQueue[0][0]).isEqualTo('sendEvent');
    assertThat(sgQueue[0][1][0]).isEqualTo('api-key');

    // New stub from the second run is still functional and pushes to the same queue.
    installedSwitch.transactionId();
    assertThat(sgQueue.length).isEqualTo(2);
    assertThat(sgQueue[1][0]).isEqualTo('transactionId');
- name: URL options separators are not URI-encoded
  code: |
    // Regression guard for commit 67a879a "Fix options encoding".
    // If encodeUriComponent is ever applied to (pixelId + options) instead
    // of just pixelId, every '&' separator in options becomes %26 and the
    // query params silently never reach pixel.js.
    let capturedUrl = null;

    mock('copyFromWindow', () => undefined);
    mock('setInWindow', () => true);
    mock('injectScript', (url, onSuccess) => {
      capturedUrl = url;
      onSuccess();
    });

    runCode({
      pixelCode: "abc123",
      automaticMode: true,
      sessionLimit: 1000
    });

    assertThat(capturedUrl).contains('&auto=true');
    assertThat(capturedUrl).contains('&session-byte-limit=1000');
    assertThat(capturedUrl).doesNotContain('%26auto');
    assertThat(capturedUrl).doesNotContain('%26session-byte-limit');

    assertApi('gtmOnSuccess').wasCalled();
- name: pixelId with special characters is URI-encoded
  code: |
    // Protects the other direction: if encodeUriComponent is removed from
    // around pixelId, an id with reserved chars would break the URL.
    let capturedUrl = null;

    mock('copyFromWindow', () => undefined);
    mock('setInWindow', () => true);
    mock('injectScript', (url, onSuccess) => {
      capturedUrl = url;
      onSuccess();
    });

    runCode({
      pixelCode: "abc 123",
      automaticMode: false,
      sessionLimit: 500
    });

    assertThat(capturedUrl).contains('id=abc%20123');
    assertThat(capturedUrl).doesNotContain('id=abc 123');
- name: Excluded lists and options appear in URL
  code: |-
    // Covers the option-building branches: each exclusion list, the
    // automaticMode=false branch of the ternary, and the byte limit.
    let capturedUrl = null;

    mock('copyFromWindow', () => undefined);
    mock('setInWindow', () => true);
    mock('injectScript', (url, onSuccess) => {
      capturedUrl = url;
      onSuccess();
    });

    runCode({
      pixelCode: "abc123",
      excludedIds: "foo,bar",
      excludedAttributes: "gclid",
      excludedInputTypes: "checkbox",
      automaticMode: false,
      sessionLimit: 750
    });

    assertThat(capturedUrl).contains('&skipped-input-ids=foo,bar');
    assertThat(capturedUrl).contains('&excluded-attributes=gclid');
    assertThat(capturedUrl).contains('&skipped-input-types=checkbox');
    assertThat(capturedUrl).contains('&auto=false');
    assertThat(capturedUrl).contains('&session-byte-limit=750');
- name: Custom pixelUrl overrides default domain
  code: |-
    let capturedUrl = null;

    mock('copyFromWindow', () => undefined);
    mock('setInWindow', () => true);
    mock('injectScript', (url, onSuccess) => {
      capturedUrl = url;
      onSuccess();
    });

    runCode({
      pixelCode: "abc123",
      pixelUrl: "pixel.clientwebsite.com",
      automaticMode: true,
      sessionLimit: 500
    });

    assertThat(capturedUrl).contains('https://pixel.clientwebsite.com/pixel.js');
    assertThat(capturedUrl).doesNotContain('api.s10h.io');
- name: Queue logs suppressed without sg_debug=1
  code: |
    // No sg_debug=1 in the URL -> queue logs must not appear in console.
    // Existing non-queue logs (Loaded:, Scripts to embed:, Switch Boost embedded)
    // still fire so this also guards against accidentally gating them too.
    const loggedLines = [];
    let installedSwitch = null;

    mock('getUrl', (component) => component === 'query' ? '' : '');

    mock('logToConsole', function () {
      const args = [];
      for (let i = 0; i < arguments.length; i++) args.push(arguments[i]);
      loggedLines.push(args);
    });

    mock('copyFromWindow', (key) => key === 'Switch' ? installedSwitch : undefined);
    mock('setInWindow', (key, value) => {
      if (key === 'Switch') installedSwitch = value;
      return true;
    });
    mock('injectScript', (url, onSuccess) => onSuccess());

    runCode({ pixelCode: "test_pixel_id" });

    // Trigger a stub call to exercise the per-call buffering branch.
    installedSwitch.sendEvent('api-key', 'pipeline-A', { foo: 'bar' });

    const startsWith = (args, prefix) =>
      args.length > 0 && typeof args[0] === 'string' && args[0].indexOf(prefix) === 0;

    // Zero [queue] lines should reach the console.
    const queueLines = loggedLines.filter((a) => startsWith(a, '[queue]'));
    assertThat(queueLines.length).isEqualTo(0);

    // Existing non-queue logs are unaffected — at least one "Loaded:" got through.
    const loadedLines = loggedLines.filter((a) => a[0] === 'Loaded:');
    assertThat(loadedLines.length).isEqualTo(1);

    assertApi('gtmOnSuccess').wasCalled();
- name: Queue logs fire when sg_debug=1 is set
  code: |-
    // sg_debug=1 in the URL -> queue logs must fire. Verifies the fresh-install
    // branch log and the per-call buffering log both make it to logToConsole.
    const loggedLines = [];
    let installedSwitch = null;

    mock('getUrl', (component) => component === 'query' ? 'sg_debug=1' : '');


    mock('logToConsole', function () {
      const args = [];
      for (let i = 0; i < arguments.length; i++) args.push(arguments[i]);
      loggedLines.push(args);
    });

    mock('copyFromWindow', (key) => key === 'Switch' ? installedSwitch : undefined);
    mock('setInWindow', (key, value) => {
      if (key === 'Switch') installedSwitch = value;
      return true;
    });
    mock('injectScript', (url, onSuccess) => onSuccess());

    runCode({ pixelCode: "test_pixel_id" });

    // Trigger a stub call so we can verify [queue] buffering fires with args.
    installedSwitch.sendEvent('api-key', 'pipeline-A', { foo: 'bar' });

    const startsWith = (args, prefix) =>
      args.length > 0 && typeof args[0] === 'string' && args[0].indexOf(prefix) === 0;

    // Fresh-install branch fired exactly once with the 10-method count.
    const installLines = loggedLines.filter((a) => startsWith(a, '[queue] stub installed'));
    assertThat(installLines.length).isEqualTo(1);
    assertThat(installLines[0][0]).isEqualTo('[queue] stub installed (10 methods)');

    // Per-call buffering fired with the method name as the second arg and the
    // caller's args as the third arg (preserves PII-in-debug behavior).
    const bufferingLines = loggedLines.filter((a) => startsWith(a, '[queue] buffering'));
    assertThat(bufferingLines.length).isEqualTo(1);
    assertThat(bufferingLines[0][1]).isEqualTo('sendEvent');
    assertThat(bufferingLines[0][2][0]).isEqualTo('api-key');

    assertApi('gtmOnSuccess').wasCalled();
- name: createQueue is called with __sgQueue
  code: |-
    let createQueueName;
    mock('createQueue', (name) => { createQueueName = name; return function () {}; });

    runCode(mockData);

    assertThat(createQueueName).isEqualTo('__sgQueue');
- name: Stub no longer has __queue (regression guard for closure-array reintroduction)
  code: |-
    let installedStub;
    mock('setInWindow', (name, value) => { installedStub = value; return true; });

    runCode(mockData);

    // The old closure-array pattern attached __queue directly to the stub. The
    // new pattern uses window.__sgQueue (via createQueue) so the stub must NOT
    // carry __queue — otherwise pixel.js's legacy-fallback drain path would
    // double-read the same entries.
    assertThat(installedStub.__queue).isEqualTo(undefined);
- name: Stub methods push via createQueue's push function
  code: |
    let installedStub;
    const pushed = [];
    mock('setInWindow', (name, value) => { installedStub = value; return true; });
    mock('createQueue', () => function (entry) { pushed.push(entry); });

    runCode(mockData);

    installedStub.sendTemplateEvent({ apiKey: 'k', pipelineId: 'p' });
    installedStub.transactionId();

    assertThat(pushed.length).isEqualTo(2);
    assertThat(pushed[0][0]).isEqualTo('sendTemplateEvent');
    assertThat(pushed[1][0]).isEqualTo('transactionId');
- name: Stub install order createQueue and setInWindow both happen before injectScript
  code: |-
    const calls = [];
    mock('setInWindow', (name) => { if (name === 'Switch') calls.push('setInWindow'); return true; });
    mock('createQueue', () => { calls.push('createQueue'); return function () {}; });
    mock('injectScript', (url, onSuccess) => { calls.push('injectScript'); onSuccess(); });

    runCode(mockData);

    // Both halves of the stub install must complete before pixel.js download
    // starts — otherwise the brief window between injectScript and the stub
    // being installed would drop calls.
    const setInWindowIdx = calls.indexOf('setInWindow');
    const createQueueIdx = calls.indexOf('createQueue');
    const injectScriptIdx = calls.indexOf('injectScript');

    assertThat(setInWindowIdx).isGreaterThan(-1);
    assertThat(createQueueIdx).isGreaterThan(-1);
    assertThat(setInWindowIdx).isLessThan(injectScriptIdx);
    assertThat(createQueueIdx).isLessThan(injectScriptIdx);
- name: Stub install skipped when window Switch__sgReady is true (real Switch already
    loaded)
  code: |-
    let setInWindowCalled = false;
    let createQueueCalled = false;
    mock('copyFromWindow', (name) => {
      if (name === 'Switch') return { __sgReady: true };
    });
    mock('setInWindow', () => { setInWindowCalled = true; return true; });
    mock('createQueue', () => { createQueueCalled = true; return function () {}; });

    runCode(mockData);

    assertThat(setInWindowCalled).isEqualTo(false);
    assertThat(createQueueCalled).isEqualTo(false);
setup: |
  const mockData = {
    pixelCode: 'test-pixel-id',
    pixelUrl: '',
    excludedIds: '',
    excludedInputTypes: '',
    excludedAttributes: '',
    automaticMode: true,
    sessionLimit: 4000
  };

  mock('getUrl', () => '');
  mock('copyFromWindow', () => undefined);
  mock('setInWindow', () => true);
  mock('createQueue', () => function () {});
  mock('injectScript', (url, onSuccess) => { onSuccess(); });
  mock('logToConsole', () => {});


___NOTES___

Created on 8/9/2024, 2:29:54 PM


