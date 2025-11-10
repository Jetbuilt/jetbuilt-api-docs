## Querying by timestamp

Endpoints that retrieve multiple records support querying data by timestamps, unless otherwise specified.

Parameter | Description
--------- | -----------
min_created_at | Query records created after the specified date time.
max_created_at | Query records created before the specified date time.
min_updated_at | Query records updated after the specified date time.
max_updated_at | Query records updated before the specified date time.

**Note**: You can pass a date or a date time to the timestamp queries. For example:
`2023-7-28` or `2023-7-28 15:33:33 -700` or `2023-7-28T15:33:33-700`. The time defaults to `00:00:00` when not included, and the timezone defaults to UTC.
