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
    "close_date": "2018-09-04",
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
page | A specific page of results.


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
  "close_date": "2018-09-04",
  "budget": null,
  "stage": "lost",
  "labor_tax": "0.1",
  "sales_tax": "0.1",
  "total_margin": "42.0",
  "equipment_margin": "27.5",
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
      "quantity": 1,
      "scope": null,
      "active": true
    },
    {
      "id": 246767,
      "name": "Room 2",
      "quantity": 1,
      "scope": null,
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
  "tags": [
      {
        "id": 30013,
        "name": "Floor 1"
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
  ],
  "bundles": [
      {
          "id": 52779,
          "name": "TruAudio GG-8 TruAudio Bundle",
          "description": "Bundle",
          "quantity": "1.0"
      }
  ]
}
```

> Status: 200 OK

This endpoint retrieves a project by ID.

It contains additional project info like Rooms, Systems, Phases, Labor, and Bundles.

Margins are percentages.

### HTTP Request

`GET <%= api_url('/projects/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the project to retrieve


## Create a project
<%
  data =
    {
      "location_id": 4,
      "user_id": 12,
      "name": "Big Project",
      "budget": 150000,
      "probability": 0.5,
      "close_date": "2021-01-03",
      "client_id": 689,
      "custom_id": "P - 123",
      "currency": "USD"
    }
%>
<%= shell_example('/projects', command: 'POST', data: data) %>

> Response: Similar to [Get a project](#get-a-project)

> Status: 201 Created

This endpoint creates a new project.

Defaults to the 'Opportunity' stage.

### HTTP Request

`POST <%= api_url('/projects') %>`

### Data Parameters

Parameter | Description
--------- | -----------
location_id | The company location (required)
user_id | The user who is the project owner (required)
name | The name of the project (required)
budget | The opening budget
probability | The estimated probability (a decimal from 0 - 1. e.g. 0.7 = 70%)
close_date | The close date. (e.g. 2021-02-14)
client_id | The project's client (required)
primary_contact_id | The primary contact for the client
custom_id | Your custom project ID
currency | The currency (only if different from company and client defaults)


## Update a project
<%
  data =
    {
      "user_id": 5,
      "name": "Big Project",
      "budget": 100000,
      "probability": 0.8,
      "close_date_": "2021-03-01",
      "stage": "estimate"
    }
%>
<%= shell_example('/projects/<ID>', command: 'PUT', data: data) %>

> Response: Similar to [Get a project](#get-a-project)

> Status: 200 OK

This endpoint updates a project by ID.

### HTTP Request

`PUT <%= api_url('/projects/<ID>') %>`

### Data Parameters

Parameter | Description
--------- | -----------
ID | The ID of the project to update
user_id | The user who is the project owner (required)
name | The name of the project (required)
budget | The opening budget
probability | The estimated probability (a decimal from 0 - 1. e.g. 0.7 = 70%)
close_date | The close date. (e.g. 2021-02-14)
primary_contact_id | The primary contact for the client
custom_id | Your custom project ID
stage | The project's stage. Must be either an active stage: <br \> **opportunity, estimate, revisions, proposal, contract, install** <br \> or an archived stage: **completed, icebox, lost, template, trash**


## Create a project revision
<%
  data =
    {
      "name": "1.2",
      "description": "Changed a few things"
    }
%>
<%= shell_example('/projects/<PROJECT_ID>/revisions', command: 'POST', data: data) %>

> Response: Similar to [Get a project](#get-a-project)

> Status: 201 Created

This endpoint creates a new revision for a project.

Creating a new revision means a new project version is created.

If successful, the new project version will be returned.

Creating a new project version may take a few moments.

### HTTP Request

`POST <%= api_url('/projects/<PROJECT_ID>/revisions') %>`

### Data Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The ID of the project
name | The version name
description | The version description
