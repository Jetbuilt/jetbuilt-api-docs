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

## Pagination

> Sample fetching the 2nd page of clients:

<%= shell_example('/clients?page=2', curl_include: true) %>

> Response header includes 'Link':

```
<%=
<<~EOF
Link: <#{api_url('/clients?page=1')}>; rel="first",
  <#{api_url('/clients?page=1')}>; rel="prev",
  <#{api_url('/clients?page=4')}>; rel="last",
  <#{api_url('/clients?page=3')}>; rel="next"
EOF
%>
```

The collection (i.e 'Get all') endpoints paginate their results, with **25** returned per page.

The Jetbuilt API follows the RFC5988 convention of using the `Link` header to provide URLs for
the next page. Use these links to retrieve the next page of data.

**Note**: You can use `curl --include` to see your response headers. This is different
than the response body.

The response also includes a `X-Total-Count` header, which is the total number of
resources in the collection.
