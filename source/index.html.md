---
title: Jetbuilt Vendor API

language_tabs: # must be one of https://git.io/vQNgJ
  - shell--json: JSON
  - shell--kv: Key/Value

includes:
  - products
  - pricing_tiers
  - prices

toc_footers:

search: true
---

# Introduction

Welcome to the Jetbuilt Vendor API! As a manufacturer or distributor, you can use this API to keep
your products, pricing, images and descriptions current for Jetbuilt users - your dealers - to
place in their projects.

The Jetbuilt Vendor API is a REST-style API over HTTPS that uses JSON for serialization and
HTTP Token authentication.

## Base URLs

While developing your application, we'd recommend you utilize the staging environment at
[https://staging.jetbuilt.com/api](https://staging.jetbuilt.com/api) and when you're ready,
switch to production at [https://app.jetbuilt.com/api](https://app.jetbuilt.com/api)

## Passing data

Fields are passed with the request body, and can either be:

- **JSON**
- Form **Key/Value** pairs

If sending JSON, be sure to set the `Content-Type` header to
`application/json` to identify the request format, otherwise it will
default to form key/value pairs.

# Authentication

> Sample request with Authorization:

<%= shell_example('/products') %>

> Make sure to replace `<%= api_key %>` with your API key.

The Jetbuilt Vendor API uses API keys to allow access to the API. Contact us for an API key at [help@jetbuilt.com](mailto:help@jetbuilt.com).

You should include your API key in all API requests to the server in a header that looks like the
following:

`<%= auth_token %>`

<aside class="notice">
  Make sure to replace <code><%= api_key %></code> with your API key.
</aside>
