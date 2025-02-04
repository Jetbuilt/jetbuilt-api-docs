# Client Contacts

## Get all contacts for a client

<%= shell_example('/clients/<CLIENT_ID>/contacts') %>

> Response:

```json
[
  {
    "id": 37211,
    "first_name": "Bob",
    "last_name": "Jones",
    "title": "CEO",
    "email_address": "bobjones@example.com",
    "phone_number_1": "(555) 123-1234",
    "phone_number_2": "",
    "description": "",
    "primary": true,
    "created_at": "2019-08-28T06:22:44.324-07:00",
    "updated_at": "2020-02-11T11:28:51.174-08:00"
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves all contacts for one of your clients.

### HTTP Request

`GET <%= api_url('/clients/<CLIENT_ID>/contacts') %>`

### URL Parameters

Parameter | Description
--------- | -----------
CLIENT_ID | The ID of the client


## Get a contact for a client

<%= shell_example('/clients/<CLIENT_ID>/contacts/<ID>') %>

> Response: Similar to [Get all client contacts](#get-all-contacts-for-a-client)

> Status: 200 OK

This endpoint retrieves a client contact by ID.

### HTTP Request

`GET <%= api_url('/clients/<CLIENT_ID>/contacts/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
CLIENT_ID | The ID of the client
ID | The ID of the contact to retrieve


## Create a client contact
<%
  data =
    {
      "first_name": "Bob",
      "last_name": "Jones",
      "title": "Owner",
      "email_address": "bobjones2@example.com",
      "phone_number_1": "(555) 123-1234",
      "primary": true
    }
%>
<%= shell_example('/clients/<CLIENT_ID>/contacts', command: 'POST', data: data) %>

> Response: Similar to [Get all client contacts](#get-all-contacts-for-a-client)

> Status: 201 Created

This endpoint creates a new contact for a client.

### HTTP Request

`POST <%= api_url('/clients/<CLIENT_ID>/contacts') %>`

### Data Parameters

Parameter | Description
--------- | -----------
first_name | The first name of the contact <small>required string</small>
last_name | The last name of the contact <small>required string</small>
title | The title of the contact <small>string</small>
email_address | The email address of the contact <small>string</small>
phone_number_1 | The first phone number for the contact <small>string</small>
phone_number_2 | A second phone number for the contact <small>string</small>
description | A description for the contact <small>string</small>
primary | If this is the primary contact for the client (true/false) <small>boolean</small>

## Update a client contact
<%
  data =
    {
      "first_name": "Bob",
      "last_name": "Jones",
      "title": "Owner",
      "email_address": "bobjones2@example.com",
      "phone_number_1": "(555) 123-1234",
      "primary": true
    }
%>
<%= shell_example('/clients/<CLIENT_ID>/contacts/<ID>', command: 'PATCH', data: data) %>

> Response: Similar to [Get all client contacts](#get-all-contacts-for-a-client)

> Status: 200 OK

This endpoint updates a contact for a client.

### HTTP Request

`PATCH <%= api_url('/clients/<CLIENT_ID>/contacts/<ID>') %>`

### Data Parameters

Parameter | Description
--------- | -----------
first_name | The first name of the contact <small>string</small>
last_name | The last name of the contact <small>string</small>
title | The title of the contact <small>string</small>
email_address | The email address of the contact <small>string</small>
phone_number_1 | The first phone number for the contact <small>string</small>
phone_number_2 | A second phone number for the contact <small>string</small>
description | A description for the contact <small>string</small>
primary | If this is the primary contact for the client (true/false) <small>boolean</small>
