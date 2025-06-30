# Project Service Packages

## Get all service packages in your project

<%= shell_example('/projects/<PROJECT_ID>/service_packages') %>

> Response:

```json
{
  "service_packages": [
    {
      "id": 3395,
      "name": "Annual Maintenance",
      "purchase_type": "included",
      "pricing_method": "flat_price",
      "program_term": "annually",
      "price": "200.0",
      "cost": "100.0",
      "sold": true,
      "taxed": false,
      "taxable_amount_percent": "100.0",
      "calculated_price": "200.0",
      "calculated_cost": "100.0"
    },
    {
      ...
    }
  ]
}
```

> Status: 200 OK

This endpoint retrieves the service_packages in your project.

### Calculated Price/Cost
Calculated price/cost will apply percentage-based pricing calculations.

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The ID of the project
page | A specific page of service package results.

## Get a service package

<%= shell_example('/projects/<PROJECT_ID>/service_packages/<ID>') %>

> Response:

```json
{
  "id": 3395,
  "name": "Annual Maintenance",
  "purchase_type": "included",
  "pricing_method": "flat_price",
  "program_term": "annually",
  "price": "200.0",
  "cost": "100.0",
  "sold": true,
  "taxed": false,
  "taxable_amount_percent": "100.0",
  "calculated_price": "200.0",
  "calculated_cost": "100.0"
}
```

> Status: 200 OK

This endpoint retrieves a service package by ID.

### HTTP Request

`GET <%= api_url('/projects/<PROJECT_ID>/service_packages/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The project ID of the service package
ID | The ID of the service package to update

## Update a Project Service Package
<%
  data =
    {
      "price": 10,
      "cost": 5
    }
%>
<%= shell_example('/projects/<PROJECT_ID>/service_packages/<ID>', command: 'PATCH', data: data) %>>

> Response: Similar to [Get all project items](#get-all-items-in-your-project)

> Status: 200 OK

This endpoint updates a service package for a project.

A service package cannot be updated when the project is locked.

### HTTP Request

`PATCH <%= api_url('/projects/<PROJECT_ID>/service_packages/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The project ID of the service package
ID | The ID of the service package to update

### Data Parameters

Parameter | Description
--------- | -----------
price | The price of the service package <small>decimal</small>
cost | The system of the item <small>decimal</small>
