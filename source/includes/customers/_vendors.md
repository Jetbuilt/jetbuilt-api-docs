# Vendors

## Get all vendors

<%= shell_example('/product_databases/<DB_ID>/vendors') %>

> Response:

```json
[
  {
    "id": 123,
    "name": "ACME",
    "rank": "low",
    "preferred": false,
    "purchasing_source": "AV R Us",
    "purchasing_sources": [{ id: 1, company_name: "AV R Us"}],
    "price_list_date": "Jan 2022",
    "discount_percentage": "0",
    "dealer_pricing_status": "approved",
    "manufacturer": true,
    "distributor": false
  },
  {
    "id":456,
    "name": "Distributor",
    ...
    "distributor": true,
    "distributed_manufacturers": [
      {
        "id": 123,
        "name": "ACME"
      }
    ]
  }
]
```

> Status: 200 OK

This endpoint retrieves all of your connected vendors.

A list of manufacturers (Manufacturers that you have pricing connections with
through the distributor) is present in the response when the vendor is a distributor.

### HTTP Request

`GET <%= api_url('/product_databases/<DB_ID>/vendors') %>`

The product database ID is prefixed since it's possible for products and pricing
to vary across office locations. (Most companies share a single product
database across all office locations.)

This `DB_ID` can be retrieved from the [Company](#company) endpoint.

### URL Parameters

Parameter | Description
--------- | -----------
DB_ID | The ID of the the product database (see the [Company](#company) endpoint)
page | A specific page of results.


## Get a vendor

<%= shell_example('/product_databases/<DB_ID>/vendors/<ID>') %>

> Response: Similar to [Get all vendors](#get-all-vendors)

> Status: 200 OK

This endpoint retrieves a vendor by ID.

### HTTP Request

`GET <%= api_url('/product_databases/<DB_ID>/vendors/<ID>') %>`

**Note:** The dealer pricing integration status must be `approved` in order to
retrieve additional information for the vendor.

### URL Parameters

Parameter | Description
--------- | -----------
DB_ID | The ID of the the product database (see the [Company](#company) endpoint)
ID | The ID of the vendor to retrieve
