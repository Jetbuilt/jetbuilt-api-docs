# Clients

## Get all clients

<%= shell_example('/clients') %>

> Response:

```json
[
  {
    "id": 12345,
    "company_name": "Smith's AV World",
    "payment_schedule": null,
    "created_at": "2017-03-08T08:22:16.929-08:00",
    "updated_at": "2017-04-10T14:20:55.195-07:00",
    "first_name": null,
    "last_name": null,
    "title": null,
    "phone": null,
    "address": "123 Cool St",
    "city": "Tallahassee",
    "state": null,
    "zipcode": "32312",
    "country": "US"
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves all of your clients.

### HTTP Request

`GET <%= api_url('/clients') %>`

### URL Parameters

Parameter | Description
--------- | -----------
page | A specific page of results.


## Get a client

<%= shell_example('/clients/<ID>') %>

> Response: Similar to [Get all clients](#get-all-clients)

> Status: 200 OK

This endpoint retrieves a client by ID.

### HTTP Request

`GET <%= api_url('/clients/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the client to retrieve
