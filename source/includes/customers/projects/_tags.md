# Project Tags

## Get all tags in your project

<%= shell_example('/projects/<PROJECT_ID>/tags') %>

> Response:

```json
[
  {
    "id": 3234,
    "name": "Tag",
    "created_at": "2019-11-01T11:03:05.572-07:00",
    "updated_at": "2020-02-06T15:35:41.664-08:00"
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves the tags in your project.

### HTTP Request

`GET <%= api_url('/projects/<PROJECT_ID>/tags') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The ID of the project
page | A specific page of results
