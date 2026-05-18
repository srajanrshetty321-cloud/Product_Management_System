<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ page import="java.util.*,com.pms.model.Product"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Display Products</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

body{
    background:#dfe3e8;
}

.main-card{
    margin:25px;
    border-radius:20px;
    overflow:hidden;
}

.heading{
    background:#0d6efd;
    color:white;
    padding:20px;
    text-align:center;
    font-size:45px;
    font-weight:bold;
}

.table{
    margin-top:20px;
}

.table th{
    background:#212529;
    color:white;
    text-align:center;
    font-size:22px;
}

.table td{
    text-align:center;
    font-size:18px;
    font-weight:500;
}

.no-data{
    color:red;
    font-size:22px;
    font-weight:bold;
    text-align:center;
}

</style>

</head>

<body>

<div class="card shadow-lg main-card">

<div class="heading">
Product List
</div>

<div class="card-body">

<table class="table table-bordered table-hover">

<thead>

<tr>

<th>ID</th>
<th>Name</th>
<th>Category</th>
<th>Price</th>
<th>Quantity</th>

</tr>

</thead>

<tbody>

<%
List<Product> list =
(List<Product>)request.getAttribute("listProducts");

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

<td colspan="5" class="no-data">
No Products Available
</td>

</tr>

<%
}
%>

</tbody>

</table>

<div class="text-center mt-4">

<a href="index.jsp"
   class="btn btn-primary btn-lg">

Back To Home

</a>

</div>

</div>

</div>

</body>
</html>