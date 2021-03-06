# Authentication

> Sample request with Authorization:

<%= shell_example('/clients') %>

> Make sure to replace `<%= api_key %>` with your API key.

<aside class="notice">
  The Customer API is still in beta. Contact us for an API key and Sandbox access at
  [help@jetbuilt.com](mailto:help@jetbuilt.com).
</aside>

The Jetbuilt API uses API keys to allow access.

(Once out of beta, you will find your API Key under your Company Settings.)

You should include your API key in all API requests to the server in a header that looks like the
following:

`<%= auth_token %>`

<aside class="notice">
  Make sure to replace <code><%= api_key %></code> with your API key.
</aside>

You will need to enable API write acccess if you wish to create/modify data.
