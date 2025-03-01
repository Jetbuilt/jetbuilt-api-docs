# Project Proposals

## Get proposals in your project

<%= shell_example('/projects/<PROJECT_ID>/proposals') %>

> Response:

```json
[
  {
    "id": 304402,
    "name": "Proposal 8/9/19",
    "sent_at": null,
    "purchased_at": null,
    "created_at": "2019-08-08T16:59:50.008-07:00",
    "updated_at": "2022-09-08T14:03:12.359-07:00",
    "private_link": "https://app.jetbuilt.com/projects/111214/proposals/304402",
    "public_link": null,
    "expiry_public_link": null,
    "views": [
      {
        "date": "2025-02-28T17:02:50.519-08:00"
      }
      ...
    ]
  },
  ...
]
```

> Status: 200 OK

This endpoint retrieves the proposals in your project.

The `public_link` field is present when the proposal has been made public.

The `expiry_public_link` field is present when `expiry_public_link` parameter is set to `true`.

### HTTP Request

`GET <%= api_url('/projects/<PROJECT_ID>/proposals') %>`

`GET <%= api_url('/projects/<PROJECT_ID>/proposals?page=2') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The ID of the project
page | A specific page of results
expiry_public_link | if set to `true` a public link is generated that expires after 5 minutes
min_created_at | Get proposals created after the specified date time.
max_created_at | Get proposals created before the specified date time.
min_updated_at | Get proposals updated after the specified date time.
max_updated_at | Get proposals updated before the specified date time.
min_view_date | Get proposals that had views after the specified date time.
max_view_date | Get proposals that had views before the specified date time.
