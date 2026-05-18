<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Management System</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet">

<style>

body{
    background: linear-gradient(to right,#141e30,#243b55);
    min-height:100vh;
    color:white;
}

.main-card{
    background:white;
    color:black;
    border-radius:20px;
    padding:40px;
    box-shadow:0px 0px 20px rgba(0,0,0,0.3);
}

.title{
    font-size:40px;
    font-weight:bold;
    color:#0d6efd;
}

.btn-custom{
    width:100%;
    padding:15px;
    font-size:18px;
    border-radius:12px;
}

</style>

</head>

<body>

<div class="container mt-5">

    <div class="row justify-content-center">

        <div class="col-md-8">

            <div class="main-card">

                <h1 class="text-center title mb-5">
                    Product Management System
                </h1>

                <div class="d-grid gap-4">

                    <a href="productadd.jsp"
                       class="btn btn-success btn-custom">
                       Add Product
                    </a>

                    <a href="productupdate.jsp"
                       class="btn btn-warning btn-custom">
                       Update Product
                    </a>

                    <a href="productdelete.jsp"
                       class="btn btn-danger btn-custom">
                       Delete Product
                    </a>

                    <a href="DisplayProductsServlet"
                       class="btn btn-primary btn-custom">
                       Display Products
                    </a>

                    <a href="reports.jsp"
                       class="btn btn-dark btn-custom">
                       Reports
                    </a>

                </div>

            </div>

        </div>

    </div>

</div>

</body>
</html>