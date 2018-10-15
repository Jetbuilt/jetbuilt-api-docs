# Errors

The Jetbuilt API uses the following error codes:


Error Code | Meaning
---------- | -------
400 | Bad Request -- Your request is invalid.
401 | Unauthorized -- Your API key is wrong.
403 | Forbidden -- You don't have access to the resource.
404 | Not Found -- The specified item could not be found.
406 | Not Acceptable -- You requested an unsupported format.
422 | Unprocessable Entity -- Unable to save because some required data was missing.
429 | Too Many Requests -- You're making too many requests. Please slow down.
500 | Internal Server Error -- We had a problem with our server. Try again later.
503 | Service Unavailable -- We're temporarily offline for maintenance. Please try again later.
