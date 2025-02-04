# Stock Items

## Get all stock items

<%= shell_example('/stock/items') %>

> Response:

```json
[
  {
    "id": 12978,
    "stock_location_id": 382,
    "quantity": 5,
    "serial_num": null,
    "status": "received",
    "created_at": "2021-08-30T22:10:13.965-07:00",
    "updated_at": "2021-08-31T16:27:14.917-07:00",
    "company_product_id": 1599279,
    "name": "Tannoy DI 5 DC BLACK"
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves all of your stock items.

### HTTP Request

`GET <%= api_url('/stock/items') %>`

### URL Parameters

Parameter | Description
--------- | -----------
page | A specific page of results.


## Get a stock item

<%= shell_example('/stock/items/<ID>') %>

> Response: Similar to [Get all stock items](#get-all-stock-items)

> Status: 200 OK

This endpoint retrieves a stock item by ID.

### HTTP Request

`GET <%= api_url('/stock/items/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the stock item to retrieve


## Create a stock item
<%
  data =
    {
      "company_product_id": 1599279,
      "stock_location_id": 382,
      "quantity": 5
    }
%>
<%= shell_example('/stock/items', command: 'POST', data: data) %>

> Response: Similar to [Get all stock items](#get-all-stock-items)

> Status: 201 Created

This endpoint creates a new stock item.

### HTTP Request

`POST <%= api_url('/stock/items') %>`

### Data Parameters

Parameter | Description
--------- | -----------
company_product_id | The company product to create the item for <small>required integer</small>
stock_location_id | The stock location to create the item in <small>required integer</small>
quantity | The quantity in stock <small>required integer</small>
serial_num | The serial number <small>string</small>

The `company_product_id` can be found using the [Products](#get-all-products) endpoint.

If a company product doesn't yet exist, create one first, and then create the stock item.

The `stock_location_id` can be found using the [Stock Locations](#get-all-stock-locations) endpoint.

A `serial_num` is optional, and only applies to items with a quanity of 1. When a serial number is passed in, the `quantity` param will be ignored and set to 1. Otherwise it's considered a bulk item and the quantity can be freely set.


## Update a stock item
<%
  data =
    {
      "quantity": 10
    }
%>
<%= shell_example('/stock/items/<ID>', command: 'PATCH', data: data) %>

> Response: Similar to [Get all stock items](#get-all-stock-items)

> Status: 200 OK

This endpoint updates a stock item by ID.

### HTTP Request

`PATCH <%= api_url('/stock/items/<ID>') %>`

### Data Parameters

Parameter | Description
--------- | -----------
quantity | The quantity in stock <small>required integer</small>

For now only the quantity of the item can be updated.

The quantity must be greater than 0. If there are no items left in stock, then delete the item.


## Delete a stock item

<%= shell_example('/stock/items/<ID>', command: 'DELETE') %>

> Response:

```json
{
    "message": "The item has been deleted"
}
```

> Status: 200 OK

This endpoint deletes a stock item by ID.

### HTTP Request

`DELETE <%= api_url('/stock/items/<ID>') %>`
