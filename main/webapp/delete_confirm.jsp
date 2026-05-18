<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ page import="com.pms.model.Product"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Delete Confirmation</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

body{
    background:#eef2f7;
}

.main-card{
    margin-top:60px;
    border-radius:20px;
}

.table th{
    width:35%;
    background:#f8f9fa;
}

.table td{
    font-size:18px;
}

</style>

</head>

<body>

<div class="container">

<div class="row justify-content-center">

<div class="col-md-7">

<div class="card shadow-lg main-card">

<div class="card-header bg-danger text-white text-center">

<h2>Delete Product Confirmation</h2>

</div>

<div class="card-body p-4">

<%
Product p =
(Product)request.getAttribute("product");

if(p != null){
%>

<table class="table table-bordered">

<tr>

<th>Product ID</th>

<td><%= p.getProductId() %></td>

</tr>

<tr>

<th>Product Name</th>

<td><%= p.getProductName() %></td>

</tr>

<tr>

<th>Category</th>

<td><%= p.getCategory() %></td>

</tr>

<tr>

<th>Price</th>

<td>&#8377; <%= p.getPrice() %></td>

</tr>

<tr>

<th>Quantity</th>

<td><%= p.getQuantity() %></td>

</tr>

</table>

<form action="DeleteProductServlet"
      method="post">

<input type="hidden"
       name="id"
       value="<%= p.getProductId() %>">

<div class="d-grid gap-3 mt-4">

<button class="btn btn-danger btn-lg">

Delete Product

</button>

</div>

</form>

<%
}
else{
%>

<div class="alert alert-danger text-center">

<h4>Product Not Found</h4>

</div>

<%
}
%>

<!-- BACK BUTTON AT BOTTOM -->

<div class="text-center mt-4">

<a href="productdelete.jsp"
   class="btn btn-secondary btn-lg">

Back

</a>

</div>

</div>

</div>

</div>

</div>

</div>

</body>
</html>