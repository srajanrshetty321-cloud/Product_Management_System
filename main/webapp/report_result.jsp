<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ page import="java.util.*,com.pms.model.Product"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Report Result</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

body{
    background:#eef2f7;
}

.result-card{
    margin-top:40px;
    border-radius:20px;
    overflow:hidden;
}

.heading{
    font-size:35px;
    font-weight:bold;
}

.table th{
    text-align:center;
}

.table td{
    text-align:center;
}

</style>

</head>

<body>

<div class="container">

<div class="card result-card shadow-lg">

<div class="card-header bg-info text-white text-center p-4">

<h1 class="heading">
Generated Report
</h1>

</div>

<div class="card-body">

<div class="table-responsive">

<table class="table table-bordered table-hover align-middle">

<thead class="table-dark">

<tr>

<th>Product ID</th>
<th>Product Name</th>
<th>Category</th>
<th>Price</th>
<th>Quantity</th>

</tr>

</thead>

<tbody>

<%
List<Product> list =
(List<Product>)request.getAttribute("reportList");

if(list != null && !list.isEmpty()){

for(Product p : list){
%>

<tr>

<td><%= p.getProductId() %></td>

<td><%= p.getProductName() %></td>

<td><%= p.getCategory() %></td>

<td>&#8377; <%= p.getPrice() %></td>

<td><%= p.getQuantity() %></td>

</tr>

<%
}
}
else{
%>

<tr>

<td colspan="5"
    class="text-danger fw-bold">

No Records Found

</td>

</tr>

<%
}
%>

</tbody>

</table>

</div>

<div class="text-center mt-4">

<a href="report_form.jsp"
   class="btn btn-primary btn-lg">

Back To Reports

</a>

<a href="index.jsp"
   class="btn btn-dark btn-lg ms-3">

Home

</a>

</div>

</div>

</div>

</div>

</body>
</html>