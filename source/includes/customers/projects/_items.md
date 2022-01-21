# Project Items

## Get all items in your project

<%= shell_example('/projects/<PROJECT_ID>/items') %>

> Response:

```json
{
  "line_items": [
    {
      "id": 1900102,
      "manufacturer_name": "Sonos",
      "model": "SUB-GB",
      "part_number": null,
      "msrp": "749.00",
      "mapp": "0.0",
      "owner_furnished": false,
      "msrp": "699.0",
      "mapp": "699.0",
      "price": "699.0",
      "cost": "433.38",
      "currency_iso": "USD",
      "short_description": "Subwoofer Gloss BlackWireless subwoofer",
      "shipping_price": "0.0",
      "subtotal_equipment_price": "6990.0",
      "total_equipment_price": "13980.0",
      "tax_equipment": true,
      "tax_shipping": false,
      "created_at": "2018-07-19T10:42:21.736-07:00",
      "updated_at": "2018-07-25T13:52:34.062-07:00",
      "notes": null,
      "external_notes": null,
      "subcontract_labor_cost": "0.0",
      "subcontract_labor_price": "0.0",
      "kind": "physical",
      "custom": false,
      "product_id": 1251085,
      "custom_product_id": null,
      "quantity": "20.0",
      "quantity_per_room": "10.0",
      "quantity_per_bundle": null,
      "bundle": null,
      "room": {
        "id": 242060,
        "name": "Room 1",
        "quantity": "2.0"
      },
      "system": {
        "id": 196878,
        "name": "System A"
      },
      "tag": {
        "id": 30013,
        "name": "Floor 1"
      },
      "phase": null,
      "option": null,
      "labor": [
        {
          "category": "install",
          "minutes": "600.0",
          "taxable": true,
          "cost": "700.0",
          "price": "1650.0",
          "labor_type": {
            "id": 329892,
            "name": "Pre-Wire"
            }
        }
      ]
    },
    {
      ...
    }
  ],
  "factors": [
    {
      "id": 25144,
      "name": "Management",
      "description": "Hours per day of install",
      "factor_method": "hours_per_day",
      "total_price": "0.0",
      "total_cost": "0.0",
      "taxed": false,
      "hidden": false,
      "created_at": "2018-07-30T11:31:59.120-07:00",
      "updated_at": "2018-07-30T11:33:18.807-07:00"
    }
  ]
}
```

> Status: 200 OK

This endpoint retrieves the items in your project.

Includes line items and factors.

### Product IDs

If the item is using one of your custom products (`custom: true`), then it will
return a `custom_product_id`. Otherwise it will have a `product_id` from the
Jetbuilt product database.

### Quantities

An item's `quantity` is the *total* quantity of the item in the project.

i.e. If an item exists in a bundle or room which themselves have multiple quantities,
it is the total across each.

For example:

- Basic Room (quantity of 4)
  - Audio Bundle (quantity of 2 per room)
     - Item A (quantity of 3 per bundle)

The quantity returned for Item A is: 4 x 2 x 3 = 24

An item's `quantity_per_room` and `quantity_per_bundle` further break down how
many of this item appears it's corresponding room and/or bundle.

### Item Kinds

An item's `kind` is the type of item: `physical`, `hourly_labor`, or `subcontract_labor`.

`physical` and `subcontract_labor` have separate `price`/`cost` fields.

 - A `physical` items `price`/`cost` fields are `price`/`cost` respectively.
 - A `subcontract_labor` items `price`/`cost` fields are `subcontract_labor_price`/`subcontract_labor_cost` respectively.

### Currencies

The price of an item is always in the currency of the project.

The `msrp`, `mapp`, and `cost` of the item are in the currency indicated by `currency_iso`

In a future version of the API all money values will contain the currency directly:

`"cost": { "cents": 20000, "currency_iso": "USD" }`

### HTTP Request

`GET <%= api_url('/projects/<PROJECT_ID>/items') %>`

`GET <%= api_url('/projects/<PROJECT_ID>/items?page=2') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The ID of the project
page | A specific page of line item results. All factors are always returned.
