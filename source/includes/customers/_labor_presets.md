# Labor Presets

## Get all labor presets in your company

<%= shell_example('/labor_presets') %>

> Response:

```json
[
  {
    "id": 1,
    "name": "Labor Preset Name",
    "description": "Labor preset description",
    "project_item_count": 1,
    "created_at": "2025-02-04T14:31:52.488-08:00",
    "updated_at": "2025-02-05T12:34:16.028-08:00",
    "labor_values": [
      {
        "id": 6218030,
        "category": "engineering",
        "name": "Junior Designer",
        "cost": "10.0",
        "rate": "50.0",
        "minutes": "90.0",
        "created_at": "2025-02-04T14:31:52.491-08:00",
        "updated_at": "2025-02-05T12:34:16.024-08:00"
      },
      {
        "id": 6218031,
        "category": "install",
        "name": "Pre-Wire",
        "cost": "70.0",
        "rate": "165.0",
        "minutes": "15.0",
        "created_at": "2025-02-04T14:31:52.494-08:00",
        "updated_at": "2025-02-04T14:31:52.494-08:00"
      },
      {
        ...
      }
    ]
  }
]
```

> Status: 200 OK

This endpoint retrieves the labor presets in your company.

### Project Item Count

A labor preset's `project_item_count` is the number of project items that are using this labor preset.

### Labor Values
Labor values include Labor Rate settings.

## Get one labor preset in your company

This endpoint retrieves a single labor preset in your company.

<%= shell_example('/labor_presets/<ID>') %>

> Response:

```json
{
  "id": 1,
  "name": "Labor Preset Name",
  "description": "Labor preset description",
  "project_item_count": 1,
  "created_at": "2025-02-04T14:31:52.488-08:00",
  "updated_at": "2025-02-05T12:34:16.028-08:00",
  "labor_values": [
    {
      ...
    },
  ]
}
```

> Status: 200 OK
