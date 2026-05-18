package com.pms.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pms.dao.ProductDAO;
import com.pms.model.Product;

@WebServlet("/DisplayProductsServlet")
public class DisplayProductsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        ProductDAO dao = new ProductDAO();

        List<Product> list =
                dao.selectAllProducts();

        request.setAttribute("listProducts", list);

        RequestDispatcher rd =
                request.getRequestDispatcher(
                        "productdisplay.jsp");

        rd.forward(request, response);
    }
}