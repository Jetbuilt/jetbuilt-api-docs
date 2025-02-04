# Products

## Search all products

<%= shell_example('/products?query=acme-123') %>

> Response:

<%
  example_json_response =
    <<~EOF
    {
        "manufacturer": "ACME",
        "id": 12345,
        "model": "ACME-123",
        "short_description": "Microphone",
        "long_description": "Handheld Microphone",
        "part_number": "ACME-123A",
        "discontinued": false,
        "url": null,
        "msrp": "123.0",
        "mapp": "45.0",
        "currency": "USD",
        "image_url": "https://static.jetbuilt.com/productimages/images/abc.jpg",
        "lead_time": 0
      }
      EOF
%>
```json
[
  <%= example_json_response.chomp %>,
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint allows querying all products (active and discontinued) by model.

### HTTP Request

`GET <%= api_url('/products?query=sm57-lc') %>`

### URL Parameters

Parameter | Description
--------- | -----------
query | The model name to search with.
page | A specific page of results.


## Get your products

<%= shell_example('/products') %>

> Response: Similar to [Search all products](#search-all-products)

> Status: 200 OK

This endpoint retrieves all of your products (active and discontinued).

### HTTP Request

`GET <%= api_url('/products') %>`

### URL Parameters

Parameter | Description
--------- | -----------
page | A specific page of results.


## Get a product

<%= shell_example('/products/<ID>') %>

> Response:

```json
[
  <%= example_json_response.chomp %>
]
```

> Status: 200 OK

This endpoint retrieves a product by ID.

### HTTP Request

`GET <%= api_url('/products/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the product to retrieve


## Create a product
> If setting a product image, use cURL's ([Key/Value](?shell--kv#create-a-product)) format

<%
  data =
    {
      "model": "JBTEST-1",
      "short_description": "JB Test product 1",
      "part_number": "ABC123",
      "msrp": 10.0,
      "mapp": 15.99,
      "currency": "EUR",
      "image": "/path/to/file/test.jpg",
      "lead_time": 0
    }
%>
<%= shell_example('/products', command: 'POST', data: data) %>

> Response: Similar to [Get a product](#get-a-product)

> Status: 201 Created

This endpoint creates a new product.

### HTTP Request

`POST <%= api_url('/products') %>`

### Data Parameters

Parameter | Description
--------- | -----------
model | The model name (required)
short_description | A short product description
long_description | A longer product description
part_number | The part number
discontinued | If the product is active or discontinued. Default is `false`.
url | A product URL
msrp | Suggested retail price
mapp | Minimum advertised price
currency | A 3 letter ISO code (e.g. USD, EUR, JPY). Default is `USD`.
image | A product image
lead_time | lead time in weeks a customer should expect

<aside class="notice">The <code>image</code> should be a file on your system.
In the cURL example, give the file path as form data (<a href="?shell--kv#create-a-product">Key/Value</a>),
rather than as JSON.</aside>


## Update a product
<%
  data =
    {
      "model": "JBTEST-2",
      "short_description": "JB Test product 2",
      "msrp": 12.99,
      "lead_time": 1
    }
%>
<%= shell_example('/products/<ID>', command: 'PATCH', name: 'product', data: data) %>

> Response: Similar to [Get a product](#get-a-product)

> Status: 200 OK

This endpoint updates one of your products.

### HTTP Request

`PATCH <%= api_url('/products/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the product to update

### Data Parameters

Same as [Create a product](#create-a-product).

Note: `currency` cannot be changed after product creation.


## Discontinue a product

<%= shell_example('/products/<ID>', command: 'DELETE') %>

> Status: 204 No Content

This endpoint discontinues a product by ID.

### HTTP Request

`DELETE <%= api_url('/products/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the product to discontinue
