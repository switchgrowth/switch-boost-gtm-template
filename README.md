# Switch Boost

GTM Community Template to add a Switch Boost tag to a client website.

The template has two tag types:

- **Setup (page load)** loads the Boost pixel on every page. Every Boost client has one. Tags
  created before Tag Type existed are Setup tags and behave as they always have.
- **Send known email and phone** hands a form's email and phone to Boost when the form is
  submitted, from the same GTM variables the client's Enhanced Conversions for Leads (ECL) tag
  uses. The pixel hashes them the same way automatic mode does, so they match the same records.
  Use it when automatic mode isn't matching enough sessions back to the client's records.

## Setting up Send known email and phone for a client

Prerequisites (one-time, not per client):

- The Boost pixel with `Switch.sendKnownCapture` is deployed to `api.s10h.io/pixel.js`.
- This template version is published. Each container then shows "update available" for Switch
  Boost, and someone accepts it.

Per client:

1. Check they're a good fit: they already have Boost; they have an ECL tag (or another tag firing
   on lead-form submit) with variables holding the email and/or phone; their match rate is low.
2. Accept the Switch Boost template update in their container, if it hasn't been done. Their
   existing Boost tag keeps working unchanged.
3. Add one tag: Tags → New → Switch Boost:
   - **Tag Type:** Send known email and phone
   - **Email:** the same variable their ECL tag uses, e.g. `{{DLV - email}}`
   - **Phone:** the same for phone, if they have one
   - **Phone Country:** leave blank for US/Canada. Set e.g. `GB` only if numbers are typed
     without a country code
   - **Trigger:** the same trigger as their ECL tag
4. Preview and check: submit their real form in Preview with `?sg_debug=1&gclid=test` on the URL.
   Tags fired should include the new tag; the console should show
   `[known capture] dispatched to the loaded Switch`; Network should show `api/pixel` with status
   200.
5. Publish the container.
6. Measure: compare their Boost match rate before and after, from the Boost stats in Switch.

### Things that can trip it up

- **No Setup tag on the page:** the send tag reports failed in Preview. It relies on the Setup tag
  to load the pixel.
- **Consent:** if the client's consent setup blocks tags until the visitor accepts, neither Boost
  tag fires for visitors who decline, the same as ECL.
- **Very fast submits:** a submit before the pixel has loaded logs "pre-load queue". If the page
  navigates away immediately, that capture is lost.
- **Empty variable:** if the email variable is empty at the submit event, the tag sends nothing and
  still succeeds. Check the variable's value on the Form Submit event in Tag Assistant.
