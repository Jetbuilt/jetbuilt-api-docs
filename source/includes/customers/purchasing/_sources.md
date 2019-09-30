# Purchasing Sources

## Get all purchasing sources

<%= shell_example('/purchasing/sources') %>

> Response:

```json
[
  {
    "id": 1,
    "company_name": "Awesome Audio",
    "first_name": "John",
    "last_name": "Smith",
    "email": "johnaudio@example.com",
    "phone": "5551234567",
    "default_ship": "project_site",
    "created_at": "2016-02-08T15:40:38.491-08:00",
    "updated_at": "2019-01-07T09:35:48.005-08:00",
    "dealer_number": "XYZ"
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves all of purchasing sources for your company.

### HTTP Request

`GET <%= api_url('/purchasing/sources') %>`

### URL Parameters

Parameter | Description
--------- | -----------
page | A specific page of results.


## Get a purchasing source

<%= shell_example('/purchasing/sources/<ID>') %>

> Response: Similar to [Get all purchasing sources](#get-all-purchasing-sources)

> Status: 200 OK

This endpoint retrieves a purchasing source by ID.

### HTTP Request

`GET <%= api_url('/purchasing/sources/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the purchasing source to retrieve
