# Stock Products

## Get all stock products

<%= shell_example('/stock/products') %>

> Response:

```json
[
  {
    "name": "Tannoy DI 5 DC BLACK",
    "company_product_id": 22328,
    "quantity_available": 5
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves all of your stock products.

### HTTP Request

`GET <%= api_url('/stock/products') %>`

### URL Parameters

Parameter | Description
--------- | -----------
page | A specific page of results.


## Get a stock product

<%= shell_example('/stock/products/<ID>') %>

> Response:

```json
{
  "name": "Tannoy DI 5 DC BLACK",
  "company_product_id": 22328,
  "quantity_available": 8,
  "offices": [
    {
      "id": 1977,
      "quantity_avaliable": 3
    },
    {
      "id": 3,
      "quantity_avaliable": 5
    }
  ]
}
```

> Status: 200 OK

This endpoint retrieves a stock product by ID.

The `quantity_avaliable` is the sum of all the individual stock items for that product.

The available quantities are also broken out by office location.

### HTTP Request

`GET <%= api_url('/stock/products/<COMPANY_PRODUCT_ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
COMPANY_PRODUCT_ID | The ID of the company product to retrieve stock levels for

The `company_product_id` can be found using the [Stock Products](#get-all-stock-products) endpoint, or the [Company Products](#get-all-products) endpoint.

The `quantity_avaliable` is the sum of all the individual stock items for that product.


## Get a stock product items

<%= shell_example('/stock/products/<COMPANY_PRODUCT_ID>/items') %>

> Response: Similar to [Get all stock items](#get-all-stock-items)

> Status: 200 OK

This endpoint retrieves all stock items for a given stock product.

### HTTP Request

`GET <%= api_url('/stock/products/<COMPANY_PRODUCT_ID>/items') %>`

### URL Parameters

Parameter | Description
--------- | -----------
COMPANY_PRODUCT_ID | The ID of the stock product to retrieve

The `company_product_id` can be found using the [Stock Products](#get-all-stock-products) endpoint, or the [Company Products](#get-all-products) endpoint.
