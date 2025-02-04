# Products

## Get all products

<%= shell_example('/product_databases/<DB_ID>/products') %>

> Response:

<%
  example_json_response =
    <<~EOF
    {
      "id": 351,
      "model": "xyz",
      "currency_code": "USD",
      "product_id": 4590,
      "cost": "594.15",
      "price": "690.0",
      "short_description": "xyz example product",
      "msrp": "699.0",
      "mapp": null,
      "image_url": "https://static.jetbuilt.com/productimages/images/xyz.jpg",
      "phase_id": 17,
      "shipping_cost": "0.0",
      "shipping_price": "55.0",
      "discontinued": false,
      "notes": "",
      "warranty_value": "24.0",
      "warranty_unit": "mo",
      "rack_value": "24.0",
      "rack_unit": "RU",
      "power_value": "500.0",
      "power_unit": "W",
      "poe_value": "500.0",
      "poe_unit": "W",
      "heat_load_value": "300.0",
      "heat_load_unit": "BTU",
      "weight_value": "300.0",
      "weight_unit": "kg",
      "height_value": "3.0",
      "height_unit": "m",
      "width_value": "4.5",
      "width_unit": "m",
      "depth_value": "2.0",
      "depth_unit": "m",
      "commodity_code": "AB123C",
      "country_of_origin": "United States",
      "shipping_weight_value": "30.0",
      "shipping_weight_unit": "lb",
      "shipping_height_value": "24",
      "shipping_height_unit": "in",
      "shipping_width_value": "8",
      "shipping_width_unit": "in",
      "shipping_depth_value": "12",
      "shipping_depth_unit": "in",
      "manufacturer": {
        "id": 458,
        "name": "ACME"
      },
      "custom": false,
      "direct_pricing": true,
      "tax_equipment": true,
      "tax_labor": true,
      "tax_shipping": false,
      "favorite": true,
      "created_at": "2023-05-04T13:08:27.718-07:00",
      "updated_at": "2023-05-04T13:08:27.718-07:00"
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

This endpoint retrieves all products that are in your company database

### HTTP Request

`GET <%= api_url('/product_databases/<DB_ID>/products') %>`

`GET <%= api_url('/product_databases/<DB_ID>/products?manufactuer_name=Shure') %>`

The product database ID is prefixed since it's possible for products and pricing
to vary across office locations. (Most companies share a single product
database across all office locations.)

This `DB_ID` can be retrieved from the [Company](#company) endpoint.

### URL Parameters

Parameter | Description
--------- | -----------
DB_ID | The ID of the the product database (see the [Company](#company) endpoint)
manufacturer_name | Filter results by manufacturer name <small>must be an exact match</small>
model | Filter results by model name <small> must be an exact match</small>
currency_code | Filter results by currency code. _e.g CAD_. <small>defaults to USD</small>
query | Filter results by matching across manufacturer and model names <small>does not need to match exactly</small> <br/> _e.g. Shure SM57_
page | A specific page of results.
min_created_at | Query products created after the specified date time.
max_created_at | Query products created before the specified date time.
min_updated_at | Query products updated after the specified date time.
max_updated_at | Query products updated before the specified date time.

If filtering with the `query` param, then it takes precedence, and the other filtering params are ignored. Can be used when unsure about the exact manufacturer or model name.

The `manufactuer_name`, `model`, and `currency_code` filters can be used together, for more refined filtering, or used separately.

When all 3 are used together, it should return a single result if found (or none if not found). Only a single product should exist in the company's database for a specific manufacturer, model, and currency combination. _e.g. Shure, SM57-LC, USD_


## Get a product

<%= shell_example('/product_databases/<DB_ID>/products/<ID>') %>

> Response:

```json
<%= example_json_response.chomp %>
```

> Status: 200 OK

This endpoint retrieves a product from your company database.

### HTTP Request

`GET <%= api_url('/product_databases/<DB_ID>/products/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
DB_ID | The ID of the the product database (see the [Company](#company) endpoint)
ID | The ID of the product to retrieve

## Create a product
> If setting a product image, use cURL's ([Key/Value](?shell--kv#create-a-product)) format

<%
  data =
    {
      "short_description": "JB Test product 1",
      "cost": 10.0,
      "price": 15.99,
      "image": "/path/to/file/test.jpg"
    }
%>
<%= shell_example('/product_databases/<DB_ID>/products', command: 'POST', data: data) %>

> Response: Similar to [Get a product](#get-a-product)

> Status: 201 Created

This endpoint creates a new product in your company database.

<strong>Note:</strong> When creating a product in your company database, we will use the provided parameters (required parameters) to find the manufacturer's product in our database in order to connect you to any approved direct pricing and other data we have for the product. If we cannot find a product, it will be a custom product.

The `product_id` (products with approved direct pricing) can be found using the [vendor products endpoint](customers#vendor-products)

### HTTP Request

`POST <%= api_url('/product_databases/<DB_ID>/products') %>`

### URL Parameters

Parameter | Description
--------- | -----------
DB_ID | The ID of the the product database (see the [Company](#company) endpoint)

### Data Parameters

Parameter | Description
--------- | -----------
manufacturer_name | The name of the manufacturer (required<sup><a href='#required'>1</a></sup>) <small>string</small>
model | The model name (required<sup><a href='#required'>1</a></sup>) <small>string</small>
currency_code | A 3 letter ISO code (e.g. USD, EUR, JPY) Defaults to USD <small>string</small>
product_id | The id of a manufacturer's product (required<sup><a href='#required'>1</a></sup>) <small>integer</small>
cost | The cost of the product<sup><a href='#cost'>2</a></sup> <small>decimal</small>
price | The price of the product <small>decimal</small>
short_description | A short product description <small>string</small>
image | A product image
phase_id | The phase id <small>integer</small>
shipping_cost | The shipping_cost of the product <small>decimal</small>
shipping_price | The shipping_price of the product <small>decimal</small>
notes | A products notes <small>string</small>
favorite | Whether or not the product is favorited <small>boolean</small>
tax_equipment | Whether or not the products equipment is taxed <small>boolean</small>
tax_labor | Whether or not the products labor is taxed <small>boolean</small>
tax_shipping | Whether or not the products shipping is taxed <small>boolean</small>
warranty_value | The warranty value in days months or years<small>decimal</small>
warranty_unit | The warranty unit <small>enum</small> <br \>Possible values: **d, mo, yr**
rack_value | The rack value <small>decimal</small>
rack_unit | The rack unit <small>enum</small> <br \>Possible values: **RU**
power_value | The power value <small>decimal</small>
power_unit | The power unit <small>enum</small> <br \>Possible values: **W**
poe_value | The poe value <small>decimal</small>
poe_unit | The poe unit <small>enum</small> <br \>Possible values: **W**
heat_load_value | The heat_load value <small>decimal</small>
heat_load_unit | The heat_load unit <small>enum</small> <br \>Possible values: **BTU**
weight_value | The weight value <small>decimal</small>
weight_unit | The weight unit <small>enum</small> <br \>Possible values: **lb, oz, kg, g**
height_value | The height value <small>decimal</small>
height_unit | The height unit <small>enum</small> <br \>Possible values: **in, ft, cm, mm**
width_value | The width value <small>decimal</small>
width_unit | The width unit <small>enum</small> <br \>Possible values: **in, ft, cm, mm**
depth_value | The depth value <small>decimal</small>
depth_unit | The depth unit <small>enum</small> <br \>Possible values: **in, ft, cm, mm**
commodity_code | The commodity code <small>string</small>
country_of_origin | The country of origin <small>string</small>
shipping_weight_value | The shipping weight value <small>decimal</small>
shipping_weight_unit | The shipping weight unit <small>enum</small> <br \>Possible values: **lb, oz, kg, g**
shipping_height_value | The shipping height value <small>decimal</small>
shipping_height_unit | The shipping height unit <small>enum</small> <br \>Possible values: **in, ft, cm, mm**
shipping_width_value | The shipping width value <small>decimal</small>
shipping_width_unit | The shipping width unit <small>enum</small> <br \>Possible values: **in, ft, cm, mm**
shipping_depth_value | The shipping depth value <small>decimal</small>
shipping_depth_unit | The shipping depth unit <small>enum</small> <br \>Possible values: **in, ft, cm, mm**

<aside id='required'><sup>1</sup>The required parameters are the <code>manufacturer_name</code>, and <code>model</code> or the <code>product_id</code>. When the <code>product_id</code> is provided then the <code>manufacturer</code>, and <code>model</code> are ignored and are not required.</aside>

<aside id='cost'><sup>2</sup>The cost field will be ignored when this product is connected to a product with direct manufacturer pricing. This is to ensure dealer pricing accuracy. The <code>direct_pricing</code> field will be set to true when the product has direct pricing.</aside>

<aside class="notice">The <code>image</code> should be a file on your system.
In the cURL example, give the file path as form data (<a href="?shell--kv#create-a-product">Key/Value</a>),
rather than as JSON.</aside>

## Update a product
<%
  data =
    {
      "short_description": "JB Test product 2",
      "price": 12.99
    }
%>
<%= shell_example('/product_databases/<DB_ID>/products', command: 'PATCH', data: data) %>

> Response: Similar to [Get a product](#get-a-product)

> Status: 200 OK

This endpoint updates one of your products.

### HTTP Request

`PATCH <%= api_url('/product_databases/<DB_ID>/products') %>`

### URL Parameters

Parameter | Description
--------- | -----------
DB_ID | The ID of the the product database (see the [Company](#company) endpoint)
ID | The ID of the product to update

### Data Parameters

Same as [Create a product](#create-a-product).

Note: `product_id`, `manufacturer`, `model`, and `currency` cannot be changed after product creation.
