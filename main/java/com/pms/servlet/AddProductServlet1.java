package com.pms.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pms.dao.ProductDAO;
import com.pms.model.Product;

@WebServlet("/AddProductServlet1")
public class AddProductServlet1 extends HttpServlet {

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

        Product p =
                new Product();

        p.setProductId(id);
        p.setProductName(name);
        p.setCategory(category);
        p.setPrice(price);
        p.setQuantity(quantity);

        ProductDAO dao =
                new ProductDAO();

        dao.insertProduct(p);

        // REDIRECT TO HOME PAGE
        response.sendRedirect("index.jsp");
    }
}