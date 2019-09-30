# Project Purchasing

## Get purchasing info for items in your project

<%= shell_example('/projects/<PROJECT_ID>/purchasing') %>

> Response:

```json
{
  "line_items": [
    {
      "ids": [
        123,
        145,
        167
      ],
      "full_name": "ACME 123",
      "short_description": "super audio enhancer",
      "order_status": "not_ordered",
      "order_notes": null,
      "cost": "100.0",
      "total_order_cost": "300.0",
      "project_quantity": "3.0",
      "order_quantity": "3",
      "source": {
        "id": 34,
        "name": "Audio Supplier"
      }
    },
    {
      ...
    }
  ]
}
```

> Status: 200 OK

This endpoint retrieves purchasing info for items in your project.

Line items are consolidated together for purchasing, with a purchase source listed
when set.

Grouped line items will be listed together in the `ids` field.

### HTTP Request

`GET <%= api_url('/projects/<PROJECT_ID>/purchasing') %>`

`GET <%= api_url('/projects/<PROJECT_ID>/purchasing?page=2') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The ID of the project
page | A specific page of line item results
