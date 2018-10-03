# Products

## Search Products

```shell
curl "https://app.jetbuilt.com/api/products?query=sm57"
  -H "Authorization: Token token=YOURAPIKEY"
```

> The above command returns JSON structured like this:

```json
[
  {
    "manufacturer": "Shure",
    "product_model": "SM57-LC",
    "short_description": "Cardioid Dynamic",
    "longer_description": "Cardioid Dynamic",
    "msrp": "124.0",
    "currency": "en_US"
  }
]
```

This endpoint allows querying products by model.

### HTTP Request

`GET https://app.jetbuilt.com/api/products?query=sm57`
