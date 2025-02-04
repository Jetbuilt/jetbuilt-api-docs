# Stock Locations

## Get all stock locations

<%= shell_example('/stock/locations') %>

> Response:

```json
[
  {
    "id": 5,
    "name": "Warehouse",
    "position": "Rack 2",
    "description": "The rack in the back",
    "office_id": 3,
    "project_id": null,
    "kind": "company",
    "created_at": "2021-08-31T13:01:17.641-07:00",
    "updated_at": "2021-08-31T13:01:17.641-07:00"
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves all of your stock locations.

### HTTP Request

`GET <%= api_url('/stock/locations') %>`

### URL Parameters

Parameter | Description
--------- | -----------
page | A specific page of results.


## Get a stock location

<%= shell_example('/stock/locations/<ID>') %>

> Response: Similar to [Get all stock locations](#get-all-stock-locations)

> Status: 200 OK

This endpoint retrieves a stock location by ID.

### HTTP Request

`GET <%= api_url('/stock/locations/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the stock location to retrieve


## Create a stock location
<%
  data =
    {
      "kind": "company",
      "office_id": 3,
      "name": "East Warehouse",
      "position": "Shelf 20",
      "description": ""
    }
%>
<%= shell_example('/stock/locations', command: 'POST', data: data) %>

> Response: Similar to [Get all stock locations](#get-all-stock-locations)

> Status: 201 Created

This endpoint creates a new stock location.

### HTTP Request

`POST <%= api_url('/stock/locations') %>`

### Data Parameters

Parameter | Description
--------- | -----------
kind | The kind of location, either `company` or `project` <small>required string</small>
office_id | The company office location <small>only required if location is 'company' kind; integer</small>
project_id | The project this stock location is at <small>only required if location is a 'project' kind; integer</small>
name | The name of the location. e.g. Warehouse <small>required string</small>
position | Detail of the location. e.g. Rack 1 <small>only required if is a 'project' kind; string</small>
description | Optional description e.g. The new rack <small>string</small>

The stock location's `kind` must be either `company` or `project`.

If the `kind` is a `company` stock location, then it's a normal company location. An `office_id` and `position` are required.

The `office_id` can be found using the [Company](#company) endpoint, under the company's `locations`. (We now refer company locations as offices within the app.)

If it's a `project` stock location, then a `project_id` must also be supplied. (The project takes the place of the `position`, so `position` is not required.) The `project_id` can be found using the [Projects](#projects) endpoint.


## Update a stock location
<%
  data =
    {
      "name": "Warehouse",
      "position": "Shelf 20A",
      "description": ""
    }
%>
<%= shell_example('/stock/locations/<ID>', command: 'PATCH', data: data) %>

> Response: Similar to [Get all stock locations](#get-all-stock-locations)

> Status: 200 OK

This endpoint updates a stock location by ID.

### HTTP Request

`PATCH <%= api_url('/stock/locations/<ID>') %>`

### Data Parameters

Parameter | Description
--------- | -----------
name | The name of the location. e.g. Warehouse <small>required string</small>
position | Detail of the location. e.g. Rack 1 <small>required string</small>
description | Optional description e.g. The new rack


## Delete a stock location

<%= shell_example('/stock/locations/<ID>', command: 'DELETE') %>

> Response:

```json
{
    "message": "The location has been deleted"
}
```

> Status: 200 OK

This endpoint deletes a stock location by ID.

### HTTP Request

`DELETE <%= api_url('/stock/locations/<ID>') %>`

<aside><strong>Note:</strong> Any stock items associated with the stock location must be deleted (or moved) before the location can be deleted.</aside>
