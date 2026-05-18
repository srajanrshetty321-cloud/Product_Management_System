package com.pms.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pms.dao.ProductDAO;
import com.pms.model.Product;

@WebServlet("/UpdateProductServlet")
public class UpdateProductServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int id =
                Integer.parseInt(
                        request.getParameter("productId"));

        String name =
                request.getParameter("productName");

        String category =
                request.getParameter("category");

        double price =
                Double.parseDouble(
                        request.getParameter("price"));

        int quantity =
                Integer.parseInt(
                        request.getParameter("quantity"));

        Product p = new Product(
                id,
                name,
                category,
                price,
                quantity);

        ProductDAO dao = new ProductDAO();

        dao.updateProduct(p);

        response.sendRedirect("DisplayProductsServlet");
    }
}