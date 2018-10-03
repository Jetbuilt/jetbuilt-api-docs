---
title: Jetbuilt Vendor API

language_tabs: # must be one of https://git.io/vQNgJ

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

Fields passed in the request body can either be JSON or form style name-value pairs.

## Base URLs

While developing your application, we'd recommend you utilize the staging environment at
[https://staging.jetbuilt.com/api](https://staging.jetbuilt.com/api) and when you're ready,
switch to production at [https://app.jetbuilt.com/api](https://app.jetbuilt.com/api)

# Authentication

> Sample request with Authorization:

```shell
# With shell, you can just pass the correct header with each request
curl "https://staging.jetbuilt.com/api/products"
  -H "Authorization: Token token=YOURAPIKEY"
```

> Make sure to replace `YOURAPIKEY` with your API key.

The Jetbuilt Vendor API uses API keys to allow access to the API. Contact us for an API key at [help@jetbuilt.com](mailto:help@jetbuilt.com).

You should include your API key in all API requests to the server in a header that looks like the
following:

`Authorization: Token token=YOURAPIKEY`
