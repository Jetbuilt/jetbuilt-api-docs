# Purchase Orders

## Get all Purchase Orders

<%= shell_example('/purchase_orders') %>

> Response:

```json
[
  {
    "id": 123,
    "user_id": 456,
    "project_id": 95636,
    "purchasing_source_id": 1146,
    "custom_id": "JB226",
    "notes": "",
    "status": "ordered",
    "shipping_option": "Ground Shipping",
    "created_at": "2019-04-23T12:54:59.719-07:00",
    "updated_at": "2019-09-11T18:35:27.894-07:00",
    "ship_to": "Jetbuilt Testing",
    "ship_address": {
      "street": "120 Newport Center Drive",
      "city": "Newport Beach",
      "region": "California",
      "postal_code": "92660",
      "country": "US"
    }
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves all of your purchase orders.

### HTTP Request

`GET <%= api_url('/purchase_orders') %>`

### URL Parameters

Parameter | Description
--------- | -----------
page | A specific page of results.
project_id | an optional project id to filter by

## Get a purchase order

<%= shell_example('/purchase_orders/<ID>') %>

```json
  {
    "id": 123,
    "user_id": 456,
    "project_id": 95636,
    "purchasing_source_id": 1146,
    "custom_id": "JB226",
    "notes": "",
    "status": "ordered",
    "shipping_option": "Ground Shipping",
    "created_at": "2019-04-23T12:54:59.719-07:00",
    "updated_at": "2019-09-11T18:35:27.894-07:00",
    "ship_to": "Jetbuilt Testing",
    "ship_address": {
      "street": "120 Newport Center Drive",
      "city": "Newport Beach",
      "region": "California",
      "postal_code": "92660",
      "country": "US"
    },
    "line_items": [
      {
        "ids": [
          123,
          145,
          167
        ],
        "full_name": "ACME 123",
        "short_description": "super audio enhancer",
        "order_status": "not_ordered",
        "order_notes": null,
        "cost": "100.0",
        "total_order_cost": "300.0",
        "project_quantity": "3.0",
        "order_quantity": "3",
        "source": {
          "id": 34,
          "name": "Audio Supplier"
        }
      },
      {
        ...
      }
    ]
  }
```

> Status: 200 OK

This endpoint retrieves a purchase order by ID.

### HTTP Request

`GET <%= api_url('/purchase_orders/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the purchase order to retrieve
