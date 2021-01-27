# Time Sessions

<aside class="notice">
  Time Tracking is available as part of the Install Platform.
</aside>

## Get all time sessions

<%= shell_example('/time_sessions') %>

> Response:

```json
[
  {
    "id": 18,
    "start_at": "2020-10-14T10:45:00.000-07:00",
    "end_at": "2020-10-14T16:53:00.000-07:00",
    "time_zone": "Pacific Time (US & Canada)",
    "duration": 22080,
    "work_duration": 18480,
    "break_duration": 3600,
    "num_breaks": 1,
    "description": "Installed the new speakers",
    "created_at": "2020-10-14T16:45:31.078-07:00",
    "updated_at": "2020-12-08T10:13:02.084-08:00",
    "running": false,
    "user": {
        "id": 123,
        "full_name": "Joe Bob"
    },
    "project": {
        "id": 435,
        "full_name": "P - 255 Conference Room"
    },
    "category": null,
    "time_entries": [
      {
          "id": 53,
          "start_at": "2020-10-14T10:45:00.000-07:00",
          "end_at": "2020-10-14T12:51:00.000-07:00",
          "time_zone": "Pacific Time (US & Canada)",
          "duration": 7560,
          "created_at": "2020-10-14T16:45:31.140-07:00",
          "updated_at": "2020-12-08T10:13:01.978-08:00",
          "type": "work",
          "running": false,
          "labor_type": {
              "id": 43234,
              "name": "Installation"
          }
      },
      {
          "id": 54,
          "start_at": "2020-10-14T12:51:00.000-07:00",
          "end_at": "2020-10-14T13:51:00.000-07:00",
          "time_zone": "Pacific Time (US & Canada)",
          "duration": 3600,
          "created_at": "2020-10-14T16:51:45.236-07:00",
          "updated_at": "2020-12-08T10:13:02.029-08:00",
          "type": "break",
          "running": false,
          "labor_type": {
              "id": 43234,
              "name": "Installation"
          }
      },
      {
          "id": 55,
          "start_at": "2020-10-14T13:51:00.000-07:00",
          "end_at": "2020-10-14T16:53:00.000-07:00",
          "time_zone": "Pacific Time (US & Canada)",
          "duration": 10920,
          "created_at": "2020-10-14T16:51:47.948-07:00",
          "updated_at": "2020-12-08T10:13:02.046-08:00",
          "type": "work",
          "running": false,
          "labor_type": {
              "id": 43234,
              "name": "Installation "
          }
      }
    ]
  },
  {
    ...
  }
]
```

> Status: 200 OK

This endpoint retrieves all of your time sessions.

Durations are in total seconds.

Running is whether the clock is currenty running or not.

### HTTP Request

`GET <%= api_url('/time_sessions') %>`

### URL Parameters

Parameter | Description
--------- | -----------
page | A specific page of results.


## Get a time session

<%= shell_example('/time_sessions/<ID>') %>

> Response: Similar to [Get all time sessions](#get-all-time-sessions)

> Status: 200 OK

This endpoint retrieves a time session by ID.

Durations are in total seconds.

Running is whether the clock is currenty running or not.

### HTTP Request

`GET <%= api_url('/time_sessions/<ID>') %>`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the time session to retrieve
