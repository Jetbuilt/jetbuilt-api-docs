# Vendor Products

## Get all products for a vendor

<%= shell_example('/product_databases/<DB_ID>/vendors/<VENDOR_ID>/products') %>

> Response:

```json
[
  {
    "id": 392342,
    "model": "ACME-123",
    "part_number": null,
    "short_description": "A great speaker",
    "long_description": "A really great speaker",
    "msrp": "175.0",
    "mapp": "0.0",
    "discontinued": false,
    "created_at": "2015-03-30T14:58:46.398-07:00",
    "updated_at": "2022-04-27T16:01:44.767-07:00",
    "dealer_price": {
      "cost": "120.0",
      "sheet_date": "2017-05-17",
      "updated_at": "2017-05-17T08:02:43.485-07:00"
    },
    "manufacturer": "ACME",
    "currency": "USD",
    "purchasing_source": {
      "id": 441,
      "dealer_number": "abc"
    },
    "favorite": false
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves all products with your connected pricing for a vendor.

### HTTP Request

`GET <%= api_url('/product_databases/<DB_ID>/vendors/<VENDOR_ID>/products') %>`

The product database ID is prefixed since it's possible for products and pricing
to vary across office locations. (Most companies share a single product
database across all office locations.)

This `DB_ID` can be retrieved from the [Company](#company) endpoint.

**Note:** The dealer pricing integration status must be `approved` in order to
retrieve product information for the vendor.

**Note for vendors that are both a manufacturer and a distributor:**<br />
Manufactured products will be returned by default.<br />
Specifying `distributed_products=true` will return their distributed products.<br />
Filtering by a `manufacturer_id` will also return their distributed products.

### URL Parameters

Parameter | Description
--------- | -----------
DB_ID | The ID of the the product database (see the [Company](#company) endpoint)
VENDOR_ID | The ID of the vendor (An approved Manufacturer or Distributor)
page | A specific page of results.
manufacturer_id | Filter distributed products by manufacturer
distributed_products | Whether or not to return the distributed_products. Defaults to `false`. <small>boolean (true/false)</small>

## Get a product for a vendor

<%= shell_example('/product_databases/<DB_ID>/vendors/<VENDOR_ID>/products/<ID>') %>

> Response: Similar to [Get all products for a vendor](#get-all-products-for-a-vendor)

> Status: 200 OK

This endpoint retrieves a product for a vendor by ID.

### HTTP Request

`GET <%= api_url('/product_databases/<DB_ID>/vendors/<VENDOR_ID>/products/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
DB_ID | The ID of the the product database (see the [Company](#company) endpoint)
VENDOR_ID | The ID of the vendor (An approved Manufacturer or Distributor)
ID | The ID of the product to retrieve
