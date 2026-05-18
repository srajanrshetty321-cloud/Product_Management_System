package com.pms.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.pms.dao.ProductDAO;
import com.pms.model.Product;

@WebServlet("/DeleteProductServlet")
public class DeleteProductServlet extends HttpServlet {

    // SEARCH PRODUCT

    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        // GET PRODUCT NAME

        String productName =
                request.getParameter("productName");

        // DAO OBJECT

        ProductDAO dao =
                new ProductDAO();

        // FETCH PRODUCT

        Product p =
        		dao.getProductByName(productName);
        // SEND TO JSP

        request.setAttribute("product", p);

        // OPEN CONFIRM PAGE

        RequestDispatcher rd =
                request.getRequestDispatcher(
                        "delete_confirm.jsp");

        rd.forward(request, response);
    }

    // DELETE PRODUCT

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        int id =
                Integer.parseInt(
                        request.getParameter("id"));

        ProductDAO dao =
                new ProductDAO();

        dao.deleteProduct(id);

        response.sendRedirect(
                "DisplayProductsServlet");
    }
}