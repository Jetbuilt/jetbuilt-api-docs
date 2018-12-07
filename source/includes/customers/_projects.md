# Projects

## Get all projects

<%= shell_example('/projects') %>

> Response:

```json
[
  {
    "id": 59123,
    "name": "test project",
    "short_description": null,
    "payment_schedule": "",
    "custom_id": "P - 182",
    "version": "1.0",
    "price_valid_until": "2018-08-15",
    "created_at": "2018-07-16T08:17:33.273-07:00",
    "updated_at": "2018-10-31T14:19:14.241-07:00",
    "budget": null,
    "stage": "lost",
    "labor_tax": "0.1",
    "sales_tax": "0.1",
    "equipment_total": "22257.98",
    "labor_total": "33000.0",
    "shipping_total": "0.0",
    "tax_total": "3366.5",
    "total": "58624.48",
    "address": "",
    "city": "herbert",
    "state": "fl",
    "zipcode": "",
    "country": "US",
    "owner": {
      "id": 2914,
      "full_name": "John Smith"
    },
    "client": {
      "id": 63117
    },
    "company_location": {
      "id": 3,
      "name": "Jetbuilt Testing"
    },
    "currency": "USD",
    "image_url": "projects/project-avatar-3.jpg",
    "active": false,
    "shared": false
}
,
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves all of your projects.

It includes any shared projects, and only lists the active version (if multiple versions exist).

### HTTP Request

`GET <%= api_url('/projects') %>`

`GET <%= api_url('/projects?page=2') %>`

### URL Parameters

Parameter | Description
--------- | -----------
page | A specific page of results. 50 per page.


## Get a project

<%= shell_example('/projects/<ID>') %>

> Response:

```json
{
  "id": 59123,
  "name": "test project",
  "short_description": null,
  "payment_schedule": "",
  "custom_id": "P - 182",
  "version": "1.0",
  "price_valid_until": "2018-08-15",
  "created_at": "2018-07-16T08:17:33.273-07:00",
  "updated_at": "2018-10-31T14:19:14.241-07:00",
  "budget": null,
  "stage": "lost",
  "labor_tax": "0.1",
  "sales_tax": "0.1",
  "equipment_total": "22257.98",
  "labor_total": "33000.0",
  "shipping_total": "0.0",
  "tax_total": "3366.5",
  "total": "58624.48",
  "address": "",
  "city": "herbert",
  "state": "fl",
  "zipcode": "",
  "country": "US",
  "owner": {
    "id": 2914,
    "full_name": "John Smith"
  },
  "client": {
    "id": 63117
  },
  "company_location": {
    "id": 3,
    "name": "Jetbuilt Testing"
  },
  "currency": "USD",
  "image_url": "projects/project-avatar-3.jpg",
  "active": false,
  "shared": false,
  "rooms": [
    {
      "id": 242060,
      "name": "Room 1",
      "scope": null,
      "quantity": 1,
      "active": true
    },
    {
      "id": 246767,
      "name": "Room 2",
      "scope": null,
      "quantity": 1,
      "active": true
    }
  ],
  "systems": [
      {
        "id": 196878,
        "name": "System A",
        "scope": null,
        "active": true
      }
  ],
  "phases": [],
  "labor": [
      {
        "id": 329891,
        "name": "Senior Engineer",
        "category": "engineering",
        "cost": "76.0",
        "price": "100.0"
      },
      {
        "id": 329892,
        "name": "Pre-Wire",
        "category": "install",
        "cost": "70.0",
        "price": "165.0"
      }
  ]
}
```

> Status: 200 OK

This endpoint retrieves a project by ID.

It contains additional project info like Rooms, Systems, Phases, and Labor.

### HTTP Request

`GET <%= api_url('/projects/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the project to retrieve
