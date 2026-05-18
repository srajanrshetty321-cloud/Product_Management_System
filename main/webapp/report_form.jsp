<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Report Form</title>

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

.form-control{
    height:48px;
    font-size:18px;
}

.form-control::placeholder{
    color:#999;
    font-size:17px;
}

</style>

</head>

<body>

<div class="container">

<div class="row justify-content-center">

<div class="col-md-8">

<div class="card card-box">

<div class="card-header bg-info text-white text-center">

<h1>Generate Reports</h1>

</div>

<div class="card-body p-4">

<!-- PRICE REPORT -->

<form action="ReportCriteriaServlet"
      method="post"
      class="mb-5">

<input type="hidden"
       name="type"
       value="price">

<label class="form-label fs-4">
Products By Price
</label>

<input type="number"
       step="0.01"
       name="price"
       class="form-control"
       placeholder="Enter Minimum Price"
       required>

<button class="btn btn-success btn-lg mt-3 w-100">

Generate Price Report

</button>

</form>

<!-- CATEGORY REPORT -->

<form action="ReportCriteriaServlet"
      method="post"
      class="mb-5">

<input type="hidden"
       name="type"
       value="category">

<label class="form-label fs-4">
Products By Category
</label>

<input type="text"
       name="category"
       class="form-control"
       placeholder="Enter Category"
       required>

<button class="btn btn-primary btn-lg mt-3 w-100">

Generate Category Report

</button>

</form>

<!-- TOP PRODUCTS -->

<form action="ReportCriteriaServlet"
      method="post">

<input type="hidden"
       name="type"
       value="top">

<label class="form-label fs-4">
Top Products
</label>

<input type="number"
       name="limit"
       class="form-control"
       placeholder="Enter Top Limit"
       required>

<button class="btn btn-dark btn-lg mt-3 w-100">

Generate Top Products Report

</button>

</form>

</div>

</div>

</div>

</div>

</div>

</body>
</html>