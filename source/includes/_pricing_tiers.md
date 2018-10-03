# Pricing Tiers

## List Pricing Tiers

```shell
curl "https://app.jetbuilt.com/api/pricing_tiers"
  -H "Authorization: Token token=YOURAPIKEY"
```

> The above command returns JSON structured like this:

```json
[
  {
    "id": 3495,
    "name": "Default",
    "created_at": "2016-08-17T17:14:45.430-07:00",
    "updated_at": "2016-08-17T17:14:45.430-07:00"
  },
  {
    "id": 3496,
    "name": "Tier 2",
    "created_at": "2016-08-17T17:14:45.430-07:00",
    "updated_at": "2016-08-17T17:14:45.430-07:00"
  }
]
```

This endpoint retrieves all of your pricing tiers.

### HTTP Request

`GET https://app.jetbuilt.com/api/pricing_tiers`

## Create Pricing Tier

```shell
curl "https://app.jetbuilt.com/api/pricing_tiers"
  -d pricing_tier[name]=Gold
  -H "Authorization: Token token=YOURAPIKEY"
```

```json
{
  "id":17487,
  "name":"Gold",
  "created_at":"2018-10-02T18:36:59.949-07:00",
  "updated_at":"2018-10-02T18:36:59.949-07:00",
}
```

This endpoint allows you to create a pricing tier.

### HTTP Request

`POST https://app.jetbuilt.com/api/pricing_tiers`

### URL Parameters

Parameter | Description
--------- | -----------
pricing_tier[name] | The name of the tier to create
