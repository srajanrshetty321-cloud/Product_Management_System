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

@WebServlet("/ReportCriteriaServlet")
public class ReportCriteriaServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        String type =
                request.getParameter("type");

        ProductDAO dao = new ProductDAO();

        List<Product> list = null;

        if (type.equals("price")) {

            double price =
                    Double.parseDouble(
                            request.getParameter("price"));

            list = dao.getProductsByPrice(price);

        } else if (type.equals("category")) {

            String category =
                    request.getParameter("category");

            list = dao.getProductsByCategory(category);

        } else if (type.equals("top")) {

            int limit =
                    Integer.parseInt(
                            request.getParameter("limit"));

            list = dao.getTopProducts(limit);
        }

        request.setAttribute("reportList", list);

        RequestDispatcher rd =
                request.getRequestDispatcher(
                        "report_result.jsp");

        rd.forward(request, response);
    }
}