# Clients

## Get all clients

<%= shell_example('/clients') %>

> Response:

```json
[
  {
    "id": 12345,
    "company_name": "Smith's AV World",
    "delinquent": false,
    "payment_schedule": null,
    "created_at": "2017-03-08T08:22:16.929-08:00",
    "updated_at": "2017-04-10T14:20:55.195-07:00",
    "primary_contact_first_name": "Bob",
    "primary_contact_last_name": "Smith",
    "primary_contact_title": "",
    "primary_contact_email": "bobsmith@example.com",
    "primary_contact_phone_number_1": "555-123-4567",
    "primary_contact_phone_number_2": "",
    "address": "123 Cool St",
    "city": "Tallahassee",
    "state": null,
    "zipcode": "32312",
    "country": "US",
    "external_ids": {
      "acumatica_id": "5"
    },
    "parent_id": 2345,
    "contacts": [
      {
        "id": 2222,
        "first_name": "Bob",
        "last_name": "Smith",
        "title": "",
        "email_address": "bobsmith@example.com",
        "phone_number_1": "555-123-4567",
        "phone_number_2": "",
        "primary": true,
        "created_at": "2019-09-09T10:19:57.534-07:00",
        "updated_at": "2019-09-09T10:19:57.534-07:00"
      },
      {
        ...
      }
    ],
    "subclients": [
      {
        "id": 4444,
        "company_name": "Smith's AV Regional Branch"
        "delinquent": false,
        "payment_schedule": null,
        "created_at": "2017-03-08T08:22:16.929-08:00",
        "updated_at": "2017-04-10T14:20:55.195-07:00",
        "primary_contact_first_name": "Jane",
        "primary_contact_last_name": "Smith",
        "primary_contact_title": "",
        "primary_contact_email": "janesmith@example.com",
        "primary_contact_phone_number_1": "555-123-4567",
        "primary_contact_phone_number_2": "",
        "address": "123 1st St",
        "city": "Tallahassee",
        "state": null,
        "zipcode": "32312",
        "country": "US",
        "external_ids": null,
      },
      {
        ...
      }
    ],
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


## Create a client
<%
  data =
    {
      "user_id": 123,
      "company_name": "Awesome AV",
      "street_address": "123 Harbor Blvd",
      "city": "Costa Mesa",
      "state": "CA",
      "zipcode": "92626",
      "country": "US",
      "parent_id": 456
    }
%>
<%= shell_example('/clients', command: 'POST', data: data) %>

> Response: Similar to [Get all clients](#get-all-clients)

> Status: 201 Created

This endpoint creates a new client.

### HTTP Request

`POST <%= api_url('/clients') %>`

### Data Parameters

Parameter | Description
--------- | -----------
user_id | The user who is the owner of the client <small>required integer</small>
company_name | The company name of the client <small>required string</small>
street_address | The street address <small>string</small>
city | The city <small>string</small>
state | The state <small>string</small>
zipcode | The ZIP code <small>string</small>
country | The country (alpha-2 code) <small>string</small>
website | A website for the client <small>string</small>
phone | A phone number for the client <small>string</small>
description | A description for the client <small>string</small>
parent_id | The parent of the client <small>string</small>

## Update a client
<%
  data =
    {
      "user_id": 123,
      "company_name": "Awesome AV",
      "delinquent": false,
      "street_address": "123 Harbor Blvd",
      "city": "Costa Mesa",
      "state": "CA",
      "zipcode": "92626",
      "country": "US",
      "parent_id": 456
    }
%>
<%= shell_example('/clients/<ID>', command: 'PATCH', data: data) %>

> Response: Similar to [Get all clients](#get-all-clients)

> Status: 200 OK

This endpoint updates a client by ID.

### HTTP Request

`PATCH <%= api_url('/clients/<ID>') %>`

### Data Parameters

Parameter | Description
--------- | -----------
user_id | The user who is the owner of the client <small>integer</small>
company_name | The company name of the client <small>string</small>
delinquent | Indicates whether the account is delinquent <small>boolean</small>
street_address | The street address <small>string</small>
city | The city <small>string</small>
state | The state <small>string</small>
zipcode | The ZIP code <small>string</small>
country | The country (alpha-2 code) <small>string</small>
website | A website for the client <small>string</small>
phone | A phone number for the client <small>string</small>
description | A description for the client <small>string</small>
parent_id | The parent of the client <small>string</small>
