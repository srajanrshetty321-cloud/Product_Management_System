<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Reports Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

body{
    background:#eef2f7;
}

.main-title{
    text-align:center;
    margin-top:40px;
    margin-bottom:40px;
    font-size:45px;
    font-weight:bold;
    color:#0d6efd;
}

.report-card{
    border-radius:20px;
    overflow:hidden;
    transition:0.3s;
}

.report-card:hover{
    transform:translateY(-5px);
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

<h1 class="main-title">
Reports Dashboard
</h1>

<div class="row">

<!-- PRICE REPORT -->

<div class="col-md-4 mb-4">

<div class="card report-card shadow-lg">

<div class="card-header bg-success text-white text-center">

<h3>Products By Price</h3>

</div>

<div class="card-body p-4">

<form action="ReportCriteriaServlet"
      method="post">

<input type="hidden"
       name="type"
       value="price">

<div class="mb-4">

<label class="form-label fs-5">
Minimum Price
</label>

<input type="number"
       step="0.01"
       name="price"
       class="form-control"
       placeholder="Enter Minimum Price"
       required>

</div>

<div class="d-grid">

<button class="btn btn-success btn-lg">

Generate Report

</button>

</div>

</form>

</div>

</div>

</div>

<!-- CATEGORY REPORT -->

<div class="col-md-4 mb-4">

<div class="card report-card shadow-lg">

<div class="card-header bg-primary text-white text-center">

<h3>Products By Category</h3>

</div>

<div class="card-body p-4">

<form action="ReportCriteriaServlet"
      method="post">

<input type="hidden"
       name="type"
       value="category">

<div class="mb-4">

<label class="form-label fs-5">
Category
</label>

<input type="text"
       name="category"
       class="form-control"
       placeholder="Enter Category"
       required>

</div>

<div class="d-grid">

<button class="btn btn-primary btn-lg">

Generate Report

</button>

</div>

</form>

</div>

</div>

</div>

<!-- TOP PRODUCTS -->

<div class="col-md-4 mb-4">

<div class="card report-card shadow-lg">

<div class="card-header bg-dark text-white text-center">

<h3>Top Products</h3>

</div>

<div class="card-body p-4">

<form action="ReportCriteriaServlet"
      method="post">

<input type="hidden"
       name="type"
       value="top">

<div class="mb-4">

<label class="form-label fs-5">
Top Limit
</label>

<input type="number"
       name="limit"
       class="form-control"
       placeholder="Enter Top Limit"
       required>

</div>

<div class="d-grid">

<button class="btn btn-dark btn-lg">

Generate Report

</button>

</div>

</form>

</div>

</div>

</div>

</div>

<div class="text-center mt-4 mb-5">

<a href="index.jsp"
   class="btn btn-secondary btn-lg">

Back To Home

</a>

</div>

</div>

</body>
</html>