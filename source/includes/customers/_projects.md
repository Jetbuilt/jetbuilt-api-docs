# Projects

## Get all projects

<%= shell_example('/projects') %>

> Response:

```json
[
  {
    "id": 97739,
    "name": "test project",
    "short_description": null,
    "payment_schedule": "",
    "custom_id": "P - 182",
    "version": "1.3",
    "price_valid_until": "2018-08-15",
    "probability": "0.5",
    "created_at": "2018-07-16T08:17:33.273-07:00",
    "updated_at": "2018-10-31T14:19:14.241-07:00",
    "close_date": "2018-09-04",
    "commission_date": "2018-07-16",
    "estimated_install_on": "2018-08-01",
    "budget": null,
    "paid_to_date": {
      "cents": 500,
      "currency_iso": "USD"
    },
    "stage": "lost",
    "contract_number": "101",
    "labor_tax": "0.1",
    "requires_engineering?": true,
    "avso": true,
    "avso_region": "Atlantic",
    "discussion_title": null,
    "discussion_body": "",
    "project_type": "project",
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
    "project_manager": {
      "id": 2914,
      "full_name": "John Smith"
    },
    "engineer": {
      "id": 2914,
      "full_name": "Jill Smith"
    },
    "second_engineer": {
      "id": 2914,
      "full_name": "Jill Smith"
    },
    "client": {
      "id": 63117
    },
    "primary_contact": {
      "id": 2914
    },
    "company_location": {
      "id": 3,
      "name": "Jetbuilt Testing"
    },
    "market_segment": {
      "id": 98
    },
    "labor_program": {
      "id": null
    },
    "currency": "USD",
    "exchange_rates": { "CAD": 1.243825 },
    "image_url": "projects/project-avatar-3.jpg",
    "active": false,
    "shared": false,
    "original_version_id": 97737,
    "equipment_program": {
      "id": 1939,
      "name": "Manufacturer discount",
      "office_id": null
    },
    "custom_fields": {
      "invoice_number": "IV1002"
    }
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
min_created_at | Query projects created after the specified date time.
max_created_at | Query projects created before the specified date time.
min_updated_at | Query projects updated after the specified date time.
max_updated_at | Query projects updated before the specified date time.
active | (true/false) returns projects in an active stage when true; otherwise returns projects in non-active stages
stage | Filter projects by stage (a single stage name or a comma separated list - param is ignored when active param is present)
query | Filter by project name, custom_id, city, clients company name, clients first or last name

**Note**: You can pass a date or a date time to the timestamp queries. For example:
`2023-7-28` or `2023-7-28 15:33:33 -700` or `2023-7-28T15:33:33-700`. The time defaults to
`00:00:00` when not included, and the timezone defaults to UTC.

## Get a project

<%= shell_example('/projects/<ID>') %>

> Response:

```json
{
  "id": 97739,
  "name": "test project",
  "short_description": null,
  "payment_schedule": "",
  "custom_id": "P - 182",
  "version": "1.3",
  "price_valid_until": "2018-08-15",
  "probability": "1.0",
  "created_at": "2018-07-16T08:17:33.273-07:00",
  "updated_at": "2018-10-31T14:19:14.241-07:00",
  "close_date": "2018-09-04",
  "commission_date": "2018-07-16",
  "estimated_install_on": "2018-08-01",
  "budget": null,
  "paid_to_date": {
    "cents": 500,
    "currency_iso": "USD"
  },
  "stage": "lost",
  "contract_number": "101",
  "labor_tax": "0.1",
  "requires_engineering?": true,
  "avso": true,
  "avso_region": "Atlantic",
  "discussion_title": null,
  "discussion_body": "",
  "project_type": "project",
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
  "project_manager": {
    "id": 2914,
    "full_name": "John Smith"
  },
  "engineer": {
    "id": 2914,
    "full_name": "Jill Smith"
  },
  "second_engineer": {
    "id": 2914,
    "full_name": "Jill Smith"
  },
  "client": {
    "id": 63117
  },
  "primary_contact": {
    "id": 2914
  },
  "company_location": {
    "id": 3,
    "name": "Jetbuilt Testing"
  },
  "market_segment": {
    "id": 98
  },
  "labor_program": {
    "id": null
  },
  "currency": "USD",
  "exchange_rates": { "CAD": 1.243825 },
  "image_url": "projects/project-avatar-3.jpg",
  "active": false,
  "shared": false,
  "original_version_id": 97737,
  "equipment_program": {
    "id": 1939,
    "name": "Manufacturer discount",
    "office_id": null
  },
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
        "price": "100.0",
        "total_hours": "1.5"
      },
      {
        "id": 329892,
        "name": "Pre-Wire",
        "category": "install",
        "cost": "70.0",
        "price": "165.0",
        "total_hours": "0"
      }
  ],
  "bundles": [
      {
          "id": 52779,
          "name": "TruAudio GG-8 TruAudio Bundle",
          "description": "Bundle",
          "quantity": "1.0"
      }
  ],
  "versions": [
    {
      "id": 97737,
      "name": "1.0",
      "description": null,
      "locked": false
    },
    {
      "id": 97738,
      "name": "1.2",
      "description": null,
      "locked": false
    }
  ],
  "custom_fields": {
    "invoice_number": "IV1002"
  }
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
      "paid_to_date": 5.00,
      "probability": 0.5,
      "close_date": "2021-01-03",
      "client_id": 689,
      "custom_id": "P - 123",
      "currency": "USD",
      "short_description": "Project description",
      "city": "",
      "state": "",
      "street_address": "",
      "zipcode": "",
      "country": "",
      "price_valid_until": "2021-10-13",
      "tax": "0.05",
    }
%>
<%= shell_example('/projects', command: 'POST', data: data) %>

> Response: Similar to [Get a project](#get-a-project)

> Status: 201 Created

This endpoint creates a new project.

Defaults to the `opportunity` stage.

### Labor Programs
The default labor program will be assigned unless the `labor_program_id` key is in the request. Ex: You can pass a `null` value or a valid Labor Program ID to override your company's default labor program settings.

### HTTP Request

`POST <%= api_url('/projects') %>`

### Data Parameters

Parameter | Description
--------- | -----------
location_id | The company location <small>required integer</small>
user_id | The user who is the project owner <small>required integer</small>
client_id | The project's client <small>required integer</small>
name | The name of the project <small>required string</small>
budget | The opening budget <small>decimal</small>
market_segment_id | The project's market segment <small>integer</small>
paid_to_date | The amount paid to date <small>decimal</small>
probability | The estimated probability (a decimal from 0 - 1. e.g. 0.7 = 70%) <small>decimal</small>
close_date | The close date. (e.g. 2021-02-14) <small>string</small>
primary_contact_id | The primary contact for the client <small>integer</small>
custom_id | Your custom project ID <small>string</small>
currency | The currency (only if different from company and client defaults) <small>string</small>
short_description | The description of the project <small>string</small>
city | The city of the project <small>string</small>
state | The state of the project <small>string</small>
street_address | The street_address of the project <small>string</small>
zipcode | The zipcode of the project <small>string</small>
country | The country of the project (alpha-2 code) <small>string</small>
price_valid_until | The date the price is valid until (e.g. 2021-02-14) <small>string</small>
tax | The sales tax of the project <small>decimal</small>
contract_number | The contract number of the project <small>string</small>
discussion_title | The discussion page title <small>string</small>
discussion_body | The discussion page body <small>text</small>

### Additional Data Parameters for Enterprise Companies

Parameter | Description
--------- | -----------
project_type | The project type <small>enum</small><br \>All possible values: **project, box_sale, design, service, rental** <br \><small>Possible values are dependent upon your company settings.</small>
project_manager_id | The user who is the project manager <small>integer</small>
engineer_id | The user who is the engineer <small>integer</small>
second_engineer_id | The user who is the engineer <small>integer</small>
avso | Indicates if the project is an AVSO project <small>boolean</small>
avso_region | The Projects AVSO Region <small>string</small> <br />All possible values: **Atlantic, National Capital, Ontario, Pacific, Québec, Western** <small>Sending an invalid value will unset the field</small>
labor_program_id | The project's labor program <small>integer</small>

## Update a project
<%
  data =
    {
      "user_id": 5,
      "name": "Big Project",
      "budget": 100000,
      "paid_to_date": 5.00,
      "probability": 0.8,
      "close_date_": "2021-03-01",
      "custom_id": "P - 123",
      "stage": "estimate",
      "short_description": "Project description",
      "city": "",
      "state": "",
      "street_address": "",
      "zipcode": "",
      "country": "",
      "price_valid_until": "2021-10-13",
      "tax": "0.05",
    }
%>
<%= shell_example('/projects/<ID>', command: 'PATCH', data: data) %>

> Response: Similar to [Get a project](#get-a-project)

> Status: 200 OK

This endpoint updates a project by ID.

### HTTP Request

`PATCH <%= api_url('/projects/<ID>') %>`

### Data Parameters

Parameter | Description
--------- | -----------
ID | The ID of the project to update
user_id | The user who is the project owner <small>integer</small>
name | The name of the project <small>string</small>
budget | The opening budget <small>decimal</small>
market_segment_id | The project's market segment <small>integer</small>
paid_to_date | The amount paid to date <small>decimal</small>
probability | The estimated probability (a decimal from 0 - 1. e.g. 0.7 = 70%) <small>decimal</small>
close_date | The close date. (e.g. 2021-02-14) <small>string</small>
primary_contact_id | The primary contact for the client <small>integer</small>
custom_id | Your custom project ID <small>string</small>
stage | The project's stage <small>enum</small><br \> Possible values: <br \> **opportunity, estimate, revisions, proposal, contract, install, review, completed, icebox, lost, template, trash**
short_description | The description of the project <small>string</small>
city | The city of the project <small>string</small>
state | The state of the project <small>string</small>
street_address | The street_address of the project <small>string</small>
zipcode | The zipcode of the project <small>string</small>
country | The country of the project (alpha-2 code) <small>string</small>
price_valid_until | The date the price is valid until (e.g. 2021-02-14) <small>string</small>
tax | The sales tax of the project <small>decimal</small>
contract_number | The contract number of the project <small>string</small>
discussion_title | The discussion page title <small>string</small>
discussion_body | The discussion page body <small>text</small>

### Additional Data Parameters for Enterprise Companies

Parameter | Description
--------- | -----------
project_type | The project type <small>enum</small><br \>All possible values: **project, box_sale, design, service, rental** <br \><small>Possible values are dependent upon your company settings.</small>
project_manager_id | The user who is the project manager <small>integer</small>
engineer_id | The user who is the engineer <small>integer</small>
second_engineer_id | The user who is the engineer <small>integer</small>
avso | Indicates if the project is an AVSO project <small>boolean</small>
avso_region | The Projects AVSO Region <small>string</small> <br />All possible values: **Atlantic, National Capital, Ontario, Pacific, Québec, Western** <small>Sending an invalid value will unset the field</small>
labor_program_id | The project's labor program <small>integer</small>

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
name | The version name <small>string</small>
description | The version description <small>string</small>
