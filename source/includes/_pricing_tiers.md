# Pricing Tiers

## Get all your pricing tiers

<%= shell_example('/pricing_tiers') %>

> Response:

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

> Status: 200 OK

This endpoint retrieves all of your pricing tiers.

### HTTP Request

`GET <%= api_url('/pricing_tiers') %>`


## Create a pricing tier
<%
  data =
    {
      "name": "Gold"
    }
%>
<%= shell_example('/pricing_tiers', command: 'POST', data: data) %>

> Response:

```json
{
  "id":17487,
  "name":"Gold",
  "created_at":"2018-10-02T18:36:59.949-07:00",
  "updated_at":"2018-10-02T18:36:59.949-07:00",
}
```

> Status: 201 Created

This endpoint creates a new pricing tier.

### HTTP Request

`POST <%= api_url('/pricing_tiers') %>`

### Data Parameters

Parameter | Description
--------- | -----------
name | The name of the tier (required)
