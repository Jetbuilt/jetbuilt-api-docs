# Project Items

## Get all items in your project

<%= shell_example('/projects/<PROJECT_ID>/items') %>

> Response:

```json
{
  "line_items": [
    {
      "id": 1900102,
      "manufacturer_id": 252,
      "manufacturer_name": "Sonos",
      "model": "SUB-GB",
      "part_number": null,
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
      "hidden": false,
      "purchasing_released": false,
      "engineering_released": false,
      "avso_ranking": "10",
      "avso_discount": "0.0",
      "avso_msrp": {
        "cents": 59900,
        "currency_iso": "CAD"
      },
      "avso_item_name": "Subwoofer",
      "msrp_discount_percent": "-14.08",
      "discount": "0.0",
      "custom": false,
      "product_id": 1251085,
      "custom_product_id": null,
      "selected_purchasing_vendor": {
        "id": 169,
        "name": "Chief"
      },
      "purchasing_source": {
        "id": 441,
        "company_name": "Legrand AV"
      },
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
      "labor_preset": {
        "id": 1,
        "name": "Labor Preset Name"
      },
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
      ],
      "metadata": {
        "my_integration": { "my": ["data"] }
      }
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
    },
    {
      "id": 62411,
      "name": "Trip Factor",
      "description": "Trips",
      "factor_method": "trip_calc",
      "total_cost": "700.0",
      "total_price": "1225.0",
      "taxed": false,
      "hidden": false,
      "created_at": "2023-10-17T19:57:06.592-07:00",
      "updated_at": "2023-10-17T21:58:01.567-07:00",
      "trips": [
        {
          "description": "Install",
          "days": 7
        },
        {
          ...
        }
      ],
      "expenses": [
        {
          "expense_name": "Lodging",
          "calculation_method": "trip_flat_rate_per_day",
          "per_crew_member": true,
          "plus_supervisor": false,
          "cost": "100.0",
          "price": "175.0"
        },
        {
          ...
        }
      ]
    }
    {
      ...
    }
  ]
}
```

> Status: 200 OK

This endpoint retrieves the items in your project.

Includes line items and factors.

### Factors
Trip Calculator (`trip_calc`) factors have an itemized list of trips and expenses.

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

## Create a Project Item
<%
  data =
    {
      "room_id": 1234,
      "system_id": 1234,
      "tag_id": 1234,
      "phase_id": 1234,
      "short_description": "description",
      "external_notes": "note",
      "quantity_per_room": 86
    }
%>
<%= shell_example('/projects/<PROJECT_ID>/items/<ID>', command: 'POST', data: data) %>>

> Response: Similar to [Get all project items](#get-all-items-in-your-project)

> Status: 201 Created

This endpoint creates an item for a project.

An item cannot be created when the project is locked.

### HTTP Request

`POST <%= api_url('/projects/<PROJECT_ID>/items') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The project ID of the item

### Data Parameters

Parameter | Description | Default
--------- | ----------- | -----------
manufacturer_name <small>required</small> | The name of the manufacturer <small>string</small> |
model <small>required</small> | The model of the item <small>string</small> |
currency_code | The three letter ISO currency code, e.g. `USD`. <small>string</small> | The Project currency
price | The item price <small>decimal</small> | 0.0
short_description | Description of the item <small>string</small>
room_name | Name of the room in which to place the the item <small>string</small> | The first Room in the Project
system_name | Name of the system in which to place the the item <small>string</small> | The first System in the Project
quantity_per_room | The quantity for the item <small>decimal</small> | 1
shipping_price | The shipping price <small>decimal</small> | 0.0
shipping_cost | The shipping cost <small>decimal</small> | 0.0
notes | Internal notes <small>string</small>
external_notes | Customer visible notes for the item <small>string</small>
tax_equipment | Apply tax to the equipment price <small>boolean</small>
tax_shipping | Apply tax to the shipping price <small>boolean</small>
metadata | Arbitrary JSON that you can attach to this object <small>JSON Object</small>

## Update a project item
<%
  data =
    {
      "room_id": 1234,
      "system_id": 1234,
      "tag_id": 1234,
      "phase_id": 1234,
      "short_description": "description",
      "external_notes": "note",
      "quantity_per_room": 86,
      "metadata": {
        "my_integration": { "my": ["data"] }
      }
    }
%>
<%= shell_example('/projects/<PROJECT_ID>/items/<ID>', command: 'PATCH', data: data) %>>

> Response: Similar to [Get all project items](#get-all-items-in-your-project)

> Status: 200 OK

This endpoint updates an item for a project.

An item cannot be updated when the project is locked.

An item's room, system, and tag id cannot be updated if the item belongs to a bundle.

### HTTP Request

`PATCH <%= api_url('/projects/<PROJECT_ID>/items/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PROJECT_ID | The project ID of the item
ID | The ID of the item to update

### Data Parameters

Parameter | Description
--------- | -----------
room_id | The room of the item <small>integer</small>
system_id | The system of the item <small>integer</small>
tag_id | The tag of the item <small>integer</small>
phase_id | The phase of the item <small>integer</small>
short_description | Description of the item <small>string</small>
external_notes | Customer visible notes for the item <small>string</small>
quantity_per_room | The quantity for the item <small>decimal</small>
cost | The item cost <small>decimal</small>
metadata | Arbitrary JSON that you can attach to this object <small>JSON Object</small>
