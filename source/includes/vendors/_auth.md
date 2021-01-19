# Authentication

> Sample request with Authorization:

<%= shell_example('/products') %>

> Make sure to replace `<%= api_key %>` with your API key.

The Jetbuilt API uses API keys to allow access. Contact us for an API key and Sandbox access
at [help@jetbuilt.com](mailto:help@jetbuilt.com).

You should include your API key in all API requests to the server in a header that looks like the
following:

`<%= auth_token %>`

<aside class="notice">
  Make sure to replace <code><%= api_key %></code> with your API key.
</aside>
