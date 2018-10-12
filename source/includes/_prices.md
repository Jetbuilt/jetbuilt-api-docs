# Prices

## Get all product prices in your pricing tier

<%= shell_example('/pricing_tiers/<TIER_ID>/prices') %>

> Response:

```json
[
  {
    "product_id": 3495,
    "amount": "400.98",
    "created_at": "2016-08-15T13:00:35.492-07:00",
    "updated_at": "2016-08-15T13:27:38.004-07:00"
  }
]
```

This endpoint retrieves all of your product prices for a particular pricing tier.

### HTTP Request

`GET <%= api_url('/pricing_tiers/<TIER_ID>/prices') %>`

### URL Parameters

Parameter | Description
--------- | -----------
TIER_ID | The ID of the pricing tier


## Create/Update a product price for a pricing tier

<%
  data =
    {
      "product_id": 1234,
      "amount": 500.50
    }
%>
<%= shell_example('/pricing_tiers/<TIER_ID>/prices', command: 'POST', data: data) %>

> Response:

```json
{
  "product_id": 1234,
  "amount": "500.50",
  "created_at": "2016-08-15T13:00:35.492-07:00",
  "updated_at": "2016-08-15T13:27:38.004-07:00"
}
```

This endpoint allows you to create or update a price for a product within a pricing tier.

If a price for the product, on the price tier, doesn't yet exist, then it will be created.
Otherwise the existing price is updated.

### HTTP Request

`POST <%= api_url('/pricing_tiers/<TIER_ID>/prices') %>`

### URL Parameters

Parameter | Description
--------- | -----------
TIER_ID | The ID of the pricing tier

### Data Parameters

Parameter | Description
--------- | -----------
product_id | The id of the product to set the price on
amount | A decimal representing the price in the currency of the product

## Delete a product price from a price tier

<%= shell_example('/pricing_tiers/<TIER_ID>/prices/<ID>', command: 'DELETE') %>

> Response: Status - No Content

This endpoint allows you to delete a price from a pricing tier.

### HTTP Request

`DELETE <%= api_url('/pricing_tiers/<TIER_ID>/prices/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
TIER_ID | The ID of the pricing tier
ID | The ID of the product price to delete
