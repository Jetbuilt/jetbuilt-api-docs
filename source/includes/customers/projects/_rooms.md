# Project Rooms

## Get all rooms in your project

<%= shell_example('/projects/<PROJECT_ID>/rooms') %>

> Response:

```json
[
  {
    "id": 3234,
    "name": "Main Room",
    "quantity": 1,
    "created_at": "2019-11-01T11:03:05.572-07:00",
    "updated_at": "2020-02-06T15:35:41.664-08:00",
    "active": true
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves the rooms in your project.

### HTTP Request

`GET <%= api_url('/projects/<PROJECT_ID>/rooms') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The ID of the project
page | A specific page of results


## Get a room in your project

<%= shell_example('/projects/<PROJECT_ID>/rooms/<ID>') %>

> Response:

```json
{
  "id": 3234,
  "name": "Main Room",
  "quantity": 1,
  "created_at": "2018-02-23T11:57:50.853-08:00",
  "updated_at": "2020-08-20T16:11:56.520-07:00",
  "total_cost": "70370.4089260971998418969570213514",
  "total_price": "151136.2848120055371328870953042518",
  "total_tax": "10909.088533333333333333328",
  "equipment_total_cost": "58263.9089260971998418971570213514",
  "equipment_total_price": "126098.6489260971998418971570213514",
  "labor_total_cost": "11851.4999999999999999998",
  "labor_total_price": "21058.9999999999999999996",
  "other_total_cost": "255.0",
  "other_total_price": "3978.6358859083372909903382829004",
  "line_items": [
      {
        ...
      }
    ],
    "factors": [
      {
        "id": 342,
        "name": "Shipping",
        "description": "Percentage",
        "factor_method": "equipment_price",
        "taxed": false,
        "hidden": false,
        "total_cost": "0.0",
        "total_price": "3623.6358859083372909903382829004"
      },
      {
        ...
      }
    ]
  }
```

> Status: 200 OK

This endpoint retrieves a project room by ID.

Shows additional detail for an individual project room.

Notably, it:

- Shows equipment and labor totals (cost & price)
- Lists line items in the room
- Lists project factors, along with how much of each factor applies to the room.

Totals are not currently rounded. Generally, factors are meant for an entire
project, so displaying them for an individual room causes fractional amounts.

### HTTP Request

`GET <%= api_url('/projects/<PROJECT_ID>/rooms/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The ID of the project
ID | The ID of the client to retrieve
page | A specific page of line item results
