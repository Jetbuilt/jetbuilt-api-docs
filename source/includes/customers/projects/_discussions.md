# Project Discussions

## Get all discussions in your project

<%= shell_example('/projects/<PROJECT_ID>/discussions') %>

> Response:

```json
[
  {
    "id": 27409,
    "title": "discussion name",
    "comments": [
      {
        "id": 11545,
        "created_at": "2023-07-31T06:46:04.951-07:00",
        "updated_at": "2023-07-31T06:46:05.260-07:00",
        "user": {
          "id": 486,
          "full_name": "John S"
        },
        "comment": "A comment"
      },
      ...
    ]
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves the discussions in your project.

### HTTP Request

`GET <%= api_url('/projects/<PROJECT_ID>/discussions') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The ID of the project
page | A specific page of results.

**Note**: Timestamp-based queries are not supported by this endpoint.
