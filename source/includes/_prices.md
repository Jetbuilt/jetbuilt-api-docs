# Prices

## List Prices in a Pricing Tier

```shell
curl "https://app.jetbuilt.com/api/pricing_tiers/2/prices"
  -H "Authorization: Token token=YOURAPIKEY"
```

> The above command returns JSON structured like this:

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

This endpoint retrieves all of your prices for a particular pricing tier.

### HTTP Request

`GET https://app.jetbuilt.com/api/pricing_tiers/2/prices`


## Create/Update Price for a Pricing Tier

```shell
curl "https://app.jetbuilt.com/api/pricing_tiers/2/prices"
  -d price[product_id]=3495
  -d price[amount]=400.98
  -H "Authorization: Token token=YOURAPIKEY"
```

> The above command returns JSON structured like this:

```json
{
  "product_id": 3495,
  "amount": "400.98",
  "created_at": "2016-08-15T13:00:35.492-07:00",
  "updated_at": "2016-08-15T13:27:38.004-07:00"
}
```

This endpoint allows you to create or update a price for a product within a pricing tier.

### HTTP Request

`POST https://app.jetbuilt.com/api/pricing_tiers/2/prices`

### URL Parameters

Parameter | Description
--------- | -----------
product_id | The id of the product for this price
amount | a decimal representing the price in the currency of the product

## Delete a Price from a Pricing Tier

```shell
curl "https://app.jetbuilt.com/api/pricing_tiers/2/prices/123"
  -X DELETE
  -d price[product_id]=3495
  -d price[amount]=400.98
  -H "Authorization: Token token=YOURAPIKEY"
```

```json
{
  "product_id": 3495,
  "amount": "400.98",
  "created_at": "2016-08-15T13:00:35.492-07:00",
  "updated_at": "2016-08-15T13:27:38.004-07:00"
}
```

This endpoint allows you to delete a price from a pricing tier.

### HTTP Request

`DELETE https://app.jetbuilt.com/api/pricing_tiers/2/prices/123`
