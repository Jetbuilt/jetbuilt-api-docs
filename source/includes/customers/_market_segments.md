# Market Segments

## Get all market segments

<%= shell_example('/market_segments') %>

> Response:

```json
[
  {
    "id": 55,
    "office_id": 1744,
    "name": "Healthcare",
    "vertical_segment": "Healthcare",
    "created_at": "2023-10-08T17:29:36.201-07:00",
    "updated_at": "2023-10-08T17:29:36.201-07:00"
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves all of your market segments.

### HTTP Request

`GET <%= api_url('/market_segments') %>`

### URL Parameters

Parameter | Description
--------- | -----------
page | A specific page of results.
office_id | Filter market segments by office
