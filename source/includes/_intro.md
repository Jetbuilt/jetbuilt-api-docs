## REST

The Jetbuilt API is a REST-style API over HTTPS that uses JSON for serialization and
HTTP Token authentication.

## Base URLs

While developing your application, we'd recommend you utilize the **staging** environment at:

[https://staging.jetbuilt.com/api](https://staging.jetbuilt.com/api)

When you're ready, switch to **production** at:

[https://app.jetbuilt.com/api](https://app.jetbuilt.com/api)

## Passing data

Fields are passed with the request body, and can either be:

- **JSON**
- Form **Key/Value** pairs

If sending JSON, be sure to set the `Content-Type` header to
`application/json` to identify the request format, otherwise it will
default to form key/value pairs.

## Versioning

> Example request header specifying the version

```shell--json
curl -H 'Accept: application/vnd.jetbuilt.v1'
```

```shell--kv
curl -H 'Accept: application/vnd.jetbuilt.v1'
```

Since the API could change over time, we recommend specifying the version you're using
with each request. This will help keep your integration working should a new
version be released. Otherwise it will default to the latest version. (Currently
there is only Version 1.)

Set the version by specifying `application/vnd.jetbuilt.v1` in the `Accept` header.

Replace <code>v1</code> with the desired version number. e.g v1, v2, v3, etc...
