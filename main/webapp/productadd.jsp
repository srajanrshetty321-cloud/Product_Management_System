<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Add Product</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

body{
    background:#f4f6f9;
}

.card-box{
    margin-top:60px;
    border-radius:20px;
    box-shadow:0px 0px 15px rgba(0,0,0,0.2);
}

.form-control,
.form-select{
    height:50px;
    font-size:18px;
}

.form-control::placeholder{
    color:#999;
    font-size:17px;
}

.card-header{
    border-top-left-radius:20px;
    border-top-right-radius:20px;
}

</style>

</head>

<body>

<div class="container">

<div class="row justify-content-center">

<div class="col-md-8">

<div class="card card-box">

<div class="card-header bg-success text-white text-center p-3">

<h1>Add Product</h1>

</div>

<div class="card-body p-4">

<form action="AddProductServlet1"
      method="post">

<!-- PRODUCT ID -->

<div class="mb-4">

<label class="form-label fs-4">
Product ID
</label>

<input type="number"
       name="productId"
       class="form-control"
       placeholder="Product ID"
       required>

</div>

<!-- PRODUCT NAME -->

<div class="mb-4">

<label class="form-label fs-4">
Product Name
</label>

<input type="text"
       name="productName"
       class="form-control"
       placeholder="Product Name"
       required>

</div>

<!-- CATEGORY -->

<div class="mb-4">

<label class="form-label fs-4">
Category
</label>

<select name="category"
        class="form-select"
        required>

<option value="">
Select Category
</option>

<option value="Electronics">
Electronics
</option>

<option value="Food">
Food
</option>

<option value="Stationary">
Stationary
</option>

<option value="Machinery">
Machinery
</option>

<option value="Clothing">
Clothing
</option>

<option value="Footwear">
Footwear
</option>

<option value="Furniture">
Furniture
</option>

<option value="Sports">
Sports
</option>

<option value="Books">
Books
</option>

<option value="Cosmetics">
Cosmetics
</option>

<option value="Medical">
Medical
</option>

<option value="Toys">
Toys
</option>

<option value="Automobile">
Automobile
</option>

<option value="Jewellery">
Jewellery
</option>

<option value="Kitchen">
Kitchen
</option>

<option value="Mobile Accessories">
Mobile Accessories
</option>

<option value="Computer Accessories">
Computer Accessories
</option>

<option value="Home Appliances">
Home Appliances
</option>

<option value="Electrical">
Electrical
</option>

<option value="Hardware">
Hardware
</option>

<option value="Software">
Software
</option>

<option value="Groceries">
Groceries
</option>

<option value="Beverages">
Beverages
</option>

<option value="Bakery">
Bakery
</option>

<option value="Dairy Products">
Dairy Products
</option>

<option value="Pet Supplies">
Pet Supplies
</option>

<option value="Gardening">
Gardening
</option>

<option value="Office Supplies">
Office Supplies
</option>

<option value="Gaming">
Gaming
</option>

<option value="Fitness">
Fitness
</option>

<option value="Travel Accessories">
Travel Accessories
</option>

<option value="Watches">
Watches
</option>

<option value="Baby Products">
Baby Products
</option>

<option value="Music Instruments">
Music Instruments
</option>

<option value="Photography">
Photography
</option>

<option value="Construction">
Construction
</option>

<option value="Safety Equipment">
Safety Equipment
</option>

<option value="Industrial Tools">
Industrial Tools
</option>

</select>

</div>

<!-- PRICE -->

<div class="mb-4">

<label class="form-label fs-4">
Price
</label>

<input type="number"
       step="0.01"
       name="price"
       class="form-control"
       placeholder="Price"
       required>

</div>

<!-- QUANTITY -->

<div class="mb-4">

<label class="form-label fs-4">
Quantity
</label>

<input type="number"
       name="quantity"
       class="form-control"
       placeholder="Quantity"
       required>

</div>

<!-- BUTTONS -->

<div class="d-grid gap-3">

<button type="submit"
        class="btn btn-success btn-lg">

Add Product

</button>

<a href="index.jsp"
   class="btn btn-secondary btn-lg">

Back To Home

</a>

</div>

</form>

</div>

</div>

</div>

</div>

</div>

</body>

</html>