# Labor Programs

## Get all labor programs

<%= shell_example('/labor_programs') %>

> Response:

```json
[
  {
    "id": 101,
    "name": "NYC Labor Package",
    "office_id": null,
    "created_at": "2019-09-25T11:38:16.835-07:00",
    "updated_at": "2024-12-02T00:48:12.397-08:00"
  },
  ...
]
```

> Status: 200 OK

This endpoint retrieves all your labor programs.

### HTTP Request

`GET <%= api_url('/labor_programs') %>`

`GET <%= api_url('/labor_programs?page=2') %>`

### URL Parameters

Parameter | Description
--------- | -----------
office_id | Labor programs belonging to the specified office
page | A specific page of results.
min_created_at | Query results created after the specified date time.
max_created_at | Query results created before the specified date time.
min_updated_at | Query results updated after the specified date time.
max_updated_at | Query results updated before the specified date time.
