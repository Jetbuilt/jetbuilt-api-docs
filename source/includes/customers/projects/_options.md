# Project Options

## Get all options/change orders in your project

<%= shell_example('/projects/<PROJECT_ID>/options') %>

> Response:

```json
[
  {
    "id": 27409,
    "name": "option1",
    "sold": true,
    "scope": "",
    "total": "550.0",
    "upgrade_total": "870.70",
    "payment_schedule": null,
    "created_at": "2018-11-06T09:31:43.646-08:00",
    "updated_at": "2018-11-06T09:32:02.156-08:00",
    "active": true,
    "change_order": false,
    "room": null
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves the options/change orders in your project.

Options become known as 'Change Orders' once the project moves to the contract stage.

### HTTP Request

`GET <%= api_url('/projects/<PROJECT_ID>/options') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The ID of the project
page | A specific page of results.


## Get an option

<%= shell_example('/projects/<PROJECT_ID>/options/<ID>') %>

> Response:

```json
{
  "id": 27409,
  "name": "option 1",
  "sold": true,
  "created_at": "2020-06-12T12:27:16.184-07:00",
  "updated_at": "2020-06-12T12:27:31.535-07:00",
  "total": "550.0",
  "upgrade_total": "870.70",
  "scope": "",
  "payment_schedule": null,
  "active": true,
  "change_order": false,
  "room": null,
  "line_items": [
    {
      "id": 3303,
      ...
      "replacement_lineitem_ids": [
        374
      ],
      ...

    },
    ...
  ],
  "factors": [
    {
      "id": 155763,
      "name": "Labor",
      "description": "Labor",
      "factor_method": "equipment_price",
      "taxed": true,
      "hidden": false,
      "total_cost": "5.5",
      "total_price": "24.75",
      "total_tax": "1.918125"
    },
    {
      ...
    }
  ]
}
```

> Status: 200 OK

This endpoint retrieves an option/change order by ID.

Shows additional detail for an option.

Notably:

- Lists factors, along with how much of each factor applies to the option.
- The Item lists replacement_lineitem_ids

### HTTP Request

`GET <%= api_url('/projects/<PROJECT_ID>/options/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The ID of the project
ID | The ID of the option to retrieve
page | A specific page of line item results


## Get all rooms in your option

<%= shell_example('/projects/<PROJECT_ID>/options/<OPTION_ID>/rooms') %>

> Response:

```json
[
  {
    "id": 3234,
    "name": "Main Room",
    "quantity": 1,
    "created_at": "2019-11-01T11:03:05.572-07:00",
    "updated_at": "2020-02-06T15:35:41.664-08:00"
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves the rooms in your project's option.

### HTTP Request

`GET <%= api_url('/projects/<PROJECT_ID>/options/<OPTION_ID>/rooms') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The ID of the project
OPTION_ID | The ID of the option
page | A specific page of results


## Get a room in your option

<%= shell_example('/projects/<PROJECT_ID>/options/<OPTION_ID>/rooms/<ID>') %>

> Response: Similar to [Get a room in your project](#get-a-room-in-your-project)

> Status: 200 OK

This endpoint retrieves a project room by ID.

Shows additional detail for an individual project room in an option.

### HTTP Request

`GET <%= api_url('/projects/<PROJECT_ID>/options/<OPTION_ID>/rooms/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The ID of the project
OPTION_ID | The ID of the option
ID | The ID of the client to retrieve
page | A specific page of line item results


## Get purchasing info for items in your option

<%= shell_example('/projects/<PROJECT_ID>/options/<OPTION_ID>/purchasing') %>

> Response: Similar to [Project Purchasing](#project-purchasing)

> Status: 200 OK

This endpoint retrieves purchasing info for items in your project's option.

Line items are consolidated together for purchasing, with a purchase source listed
when set.

Grouped line items will be listed together in the `ids` field.

### HTTP Request

`GET <%= api_url('/projects/<PROJECT_ID>/options/<OPTION_ID>/purchasing') %>`

`GET <%= api_url('/projects/<PROJECT_ID>/options/<OPTION_ID>/purchasing?page=2') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The ID of the project
OPTION_ID | The ID of the option
page | A specific page of line item results
