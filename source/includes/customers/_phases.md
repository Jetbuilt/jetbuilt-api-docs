# Phases

## Get all phases

<%= shell_example('/phases') %>

> Response:

```json
[
  {
    "id": 717,
    "name": "Prewire",
    "created_at": "2016-02-08T14:22:01.127-08:00",
    "updated_at": "2018-12-10T06:58:35.554-08:00"
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves all of your phases.

### HTTP Request

`GET <%= api_url('/phases') %>`

### URL Parameters

Parameter | Description
--------- | -----------
page | A specific page of results.
