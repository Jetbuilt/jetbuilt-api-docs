# Tasks

## Get All Tasks

<%= shell_example('/tasks') %>

> Response:

```json
[
  {
    "id": 318,
    "name": "Install the thing",
    "client_id": null,
    "project_id": 97676,
    "created_by_id": 47,
    "completed_by_id": 48,
    "completed_at": "2023-10-19T22:42:08.348-07:00",
    "minutes": "60.0",
    "lineitem_id": null,
    "phase_id": 31,
    "labor_type_id": null,
    "created_at": "2023-10-18T23:39:13.544-07:00",
    "updated_at": "2023-10-19T02:35:09.534-07:00",
    "assigned_to_id": 48,
    "due_on": "2023-10-30",
    "start_date": "10/30/2023",
    "start_time": "8:30 AM",
    "time_zone": "Eastern Time (US & Canada)",
    "all_day": false
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves all tasks.

### HTTP Request

`GET <%= api_url('/tasks') %>`

`GET <%= api_url('/tasks?project_id=1234&type=install&page=2') %>`

### URL Parameters

Parameter | Description
--------- | -----------
project_id | Filter results by the project id
type | Filter results by `install` or `sales` tasks
page | A specific page of results.

## Get a task

<%= shell_example('/task/<ID>') %>

> Response:

```json
{
  "id": 318,
  "name": "Install the thing",
  "client_id": null,
  "project_id": 97676,
  "created_by_id": 47,
  "completed_by_id": 48,
  "completed_at": "2023-10-19T22:42:08.348-07:00",
  "minutes": "60.0",
  "lineitem_id": null,
  "phase_id": 31,
  "labor_type_id": null,
  "created_at": "2023-10-18T23:39:13.544-07:00",
  "updated_at": "2023-10-19T02:35:09.534-07:00",
  "assigned_to_id": 48,
  "due_on": "2023-10-30",
  "start_date": "10/30/2023",
  "start_time": "8:30 AM",
  "time_zone": "Eastern Time (US & Canada)",
  "all_day": false,
  "steps": [
    {
      "description": "Step 1",
      "minutes": "10.0",
      "photo_required": true
    },
    {
      ...
    }
  ],
  "notes": [
    {
      "user_id": 486,
      "comment": "\n  Just completed the step \"Step 1\" to the task \"Step 1\". Enjoy this photo of the work:\n[Screenshot 2023-10-19 at 7.36.34 PM.png]"
    },
    {
      ...
    }
  ]
}
```

> Status: 200 OK

This endpoint retrieves a task by ID.

It contains additional task info like all steps and notes/comments

### HTTP Request

`GET <%= api_url('/tasks/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the task to retrieve
