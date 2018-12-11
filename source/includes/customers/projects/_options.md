# Project Options

## Get all options/change orders in your project

<%= shell_example('/projects/<PROJECT_ID>/options') %>

> Response:

```json
[
  {
    "id": 27409,
    "name": "option1",
    "scope": "",
    "price": null,
    "payment_schedule": null,
    "created_at": "2018-11-06T09:31:43.646-08:00",
    "updated_at": "2018-11-06T09:32:02.156-08:00",
    "active": true,
    "change_order": false,
    "room": null,
    "line_items": [
      {
        "id": 2329476
      }
    ]
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves the options in your project.

Options become known as 'Change Orders' once the project moves to the contract stage.

Includes the option's line items.

### HTTP Request

`GET <%= api_url('/projects/<PROJECT_ID>/options') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The ID of the project
page | A specific page of results.
