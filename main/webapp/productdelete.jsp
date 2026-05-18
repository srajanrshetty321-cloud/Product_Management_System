<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Delete Product</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

body{
    background:#f4f6f9;
}

.card-box{
    margin-top:50px;
    border-radius:20px;
    box-shadow:0px 0px 15px rgba(0,0,0,0.2);
}

.form-control{
    height:48px;
    font-size:18px;
}

.table th{
    background:#dc3545;
    color:white;
    text-align:center;
}

.table td{
    text-align:center;
    font-size:17px;
}

</style>

</head>

<body>

<div class="container">

<div class="row justify-content-center">

<div class="col-md-10">

<div class="card card-box">

<div class="card-header bg-danger text-white text-center">

<h1>Delete Product</h1>

</div>

<div class="card-body p-4">

<!-- SEARCH FORM -->

<form action="DeleteProductServlet"
      method="get">

<div class="mb-4">

<label class="form-label fs-4">
Product Name
</label>

<input type="text"
       name="productName"
       class="form-control"
       placeholder="Enter Product Name"
       required>

</div>

<div class="d-grid gap-3 mb-5">

<button type="submit"
        class="btn btn-danger btn-lg">

Search Product

</button>

<a href="index.jsp"
   class="btn btn-secondary btn-lg">

Back To Home

</a>

</div>

</form>

<!-- PRODUCT LIST -->

<h2 class="text-center mb-4 text-primary">
Available Products
</h2>

<table class="table table-bordered table-hover">

<tr>

<th>Product ID</th>
<th>Product Name</th>
<th>Category</th>
<th>Price</th>
<th>Quantity</th>

</tr>

<%

try{

    Class.forName(
            "com.mysql.cj.jdbc.Driver");

    Connection con =
            DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/productdb",
                    "root",
                    "password");

    Statement st =
            con.createStatement();

    ResultSet rs =
            st.executeQuery(
                    "SELECT * FROM Products");

    while(rs.next()){

%>

<tr>

<td>
<%= rs.getInt("ProductID") %>
</td>

<td>
<%= rs.getString("ProductName") %>
</td>

<td>
<%= rs.getString("Category") %>
</td>

<td>
&#8377; <%= rs.getDouble("Price") %>
</td>

<td>
<%= rs.getInt("Quantity") %>
</td>

</tr>

<%
    }

    con.close();

}catch(Exception e){
    e.printStackTrace();
}

%>

</table>

</div>

</div>

</div>

</div>

</div>

</body>

</html>