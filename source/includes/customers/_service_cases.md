# Service Cases

## Get all service cases

<%= shell_example('/service_cases') %>

> Response:

```json
[
  {
    "id": 1,
    "office_id": 3,
    "client_id": 35,
    "contact_id": 46,
    "project_id": 98,
    "asset_id": null,
    "closed_at": "2025-04-15T18:26:29.461-07:00",
    "created_by_id": 1,
    "created_at": "2024-08-20T21:06:32.078-07:00",
    "updated_at": "2025-04-15T18:26:30.152-07:00",
    "ticket_name": "AV Troubleshoot & Update – Exec Conf Room",
    "description": "Client reported intermittent video dropouts and distorted audio during hybrid meetings in their executive conference room.",
    "resolution": "Signal Path Repair & Firmware Updates"
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves all of your service cases.

### HTTP Request

`GET <%= api_url('/service_cases') %>`

`GET <%= api_url('/service_cases?page=2') %>`

### URL Parameters

Parameter | Description
--------- | -----------
page | A specific page of results.
min_created_at | Query service cases created after the specified date time.
max_created_at | Query service cases created before the specified date time.
min_updated_at | Query service cases updated after the specified date time.
max_updated_at | Query service cases updated before the specified date time.

**Note**: You can pass a date or a date time to the timestamp queries. For example:
`2023-7-28` or `2023-7-28 15:33:33 -700` or `2023-7-28T15:33:33-700`. The time defaults to
`00:00:00` when not included, and the timezone defaults to UTC.

## Get a service case

<%= shell_example('/service_cases/<ID>') %>

> Response:

```json
{
  "id": 72,
  "office_id": 3,
  "client_id": 309,
  "contact_id": 745,
  "project_id": null,
  "asset_id": null,
  "closed_at": "2025-08-07T22:31:54.152-07:00",
  "created_by_id": 1,
  "created_at": "2025-05-30T00:47:14.252-07:00",
  "updated_at": "2025-08-07T22:31:54.252-07:00",
  "ticket_name": "AV Troubleshoot & Update – Exec Conf Room",
  "description": "Client reported intermittent video dropouts and distorted audio during hybrid meetings in their executive conference room.",
  "resolution": "Signal Path Repair & Firmware Updates",
  "expenses": [
    {
      "id": 80,
      "category": "equipment",
      "description": "Fiber HDMI Extender Set (20m)",
      "equipment_name": "OptiLink Pro Systems FHE-20K Ultra",
      "quantity": "1.0",
      "shipping_taxed": false,
      "shipping_cost": {
        "cents": 0,
        "currency_iso": "USD"
      },
      "shipping_price": {
        "cents": 0,
        "currency_iso": "USD"
      },
      "taxed": true,
      "cost": {
        "cents": 38000,
        "currency_iso": "USD"
      },
      "amount": {
        "cents": 48000,
        "currency_iso": "USD"
      }
    },
    {
      "id": 89,
      "category": "parking",
      "description": "Travel Fee",
      "amount": {
        "cents": 5000,
        "currency_iso": "USD"
      }
    },
    {
      "id": 90,
      "category": "other",
      "description": "Firmware Update & System Recompile",
      "amount": {
        "cents": 15000,
        "currency_iso": "USD"
      }
    }
  ],
  "total_labor_hours": 4.0,
  "total_labor_price": {
    "cents": 80000,
    "currency_iso": "USD"
  },
  "total_equipment": {
    "cents": 48000,
    "currency_iso": "USD"
  },
  "total_other_expenses": {
    "cents": 100000,
    "currency_iso": "USD"
  },
  "subtotal": {
    "cents": 148000,
    "currency_iso": "USD"
  },
  "total_tax": {
    "cents": 1440,
    "currency_iso": "USD"
  },
  "total_price": {
    "cents": 149440,
    "currency_iso": "USD"
  }
}
```

> Status: 200 OK

This endpoint retrieves a service case by ID.

### HTTP Request

`GET <%= api_url('/service_cases/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the service case to retrieve
