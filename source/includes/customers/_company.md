# Company

## Get your company locations

<%= shell_example('/company') %>

> Response:

```json
{
  "id": 1,
  "name": "Topish AV",
  "created_at": "2017-05-05T07:56:42.762-07:00",
  "updated_at": "2020-12-02T15:43:11.700-08:00",
  "locations": [
    {
      "id": 1,
      "name": "Topish US",
      "time_zone": "Pacific Time (US & Canada)",
      "created_at": "2017-05-16T15:20:38.477-07:00",
      "updated_at": "2020-07-20T15:14:49.269-07:00",
      "address": "123 Main St",
      "city": "Irvine",
      "state": "California",
      "zipcode": "92660",
      "country": "US"
    },
    {
        "id": 2,
        "name": "Topish UK",
        "time_zone": "London",
        "created_at": "2017-10-04T10:14:12.606-07:00",
        "updated_at": "2019-09-25T11:42:49.193-07:00",
        "address": "123 First Ave",
        "city": "Liverpool",
        "state": "England",
        "zipcode": "12390",
        "country": "GB"
    }
  ]
}
```

> Status: 200 OK

This endpoint retrieves your basic company info and locations.

### HTTP Request

`GET <%= api_url('/company') %>`

### URL Parameters

Parameter | Description
--------- | -----------
