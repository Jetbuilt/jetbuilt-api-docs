# Users

## Get all active users

<%= shell_example('/users') %>

> Response:

```json
[
  {
    "id": 123,
    "full_name": "Josh Smith",
    "email": "joshsmith@example.com",
    "created_at": "2020-06-30T15:32:08.813-07:00",
    "updated_at": "2020-07-27T19:17:41.928-07:00"
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves all active users for you company.

### HTTP Request

`GET <%= api_url('/users') %>`

### URL Parameters

Parameter | Description
--------- | -----------


## Get a user

<%= shell_example('/users/<ID>') %>

> Response: Similar to [Get all users](#get-all-users)

> Status: 200 OK

This endpoint retrieves an active user by ID.

### HTTP Request

`GET <%= api_url('/users/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the user to retrieve
