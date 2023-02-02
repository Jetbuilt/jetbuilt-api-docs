# Distributor Product Details

## Update product distributor details

<%
  data =
    {
      "part_number": "ACME-123-D",
      "lead_time": 1
    }
%>
<%= shell_example('/products/<PRODUCT_ID>/details', command: 'PATCH', data: data) %>

> Response:

```json
{
  "product_id": 12345,
  "part_number": "ACME-123-D",
  "lead_time": 1
}
```

> Status: 201 Created / 200 OK

This endpoint allows you to create or update distributor details for a particular product.

### HTTP Request

`PATCH <%= api_url('/products/<PRODUCT_ID>/details') %>`

### URL Parameters

Parameter | Description
--------- | -----------
PRODUCT_ID | The ID of the product

### Data Parameters

Parameter | Description
--------- | -----------
part_number | An optional vendor-specific part number for this product. Will be included on POs
lead_time | An integer number of weeks of lead time needed to ship this product

<%= shell_example('/products/<PRODUCT_ID>/details') %>
