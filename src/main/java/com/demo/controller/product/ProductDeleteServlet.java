package com.demo.controller.product;

import com.demo.dao.ProductDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductDeleteServlet", urlPatterns = "/product/productDelete")
public class ProductDeleteServlet extends HttpServlet {
    private ProductDao dao = new ProductDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String mes = deleteDB(id);
        request.setAttribute("mes", mes);
        response.sendRedirect("productList");
    }

    private String deleteDB(int id) {
        int success = dao.deleteProduct(id);
        return showMessage(success);
    }

    private String showMessage(int success) {
        if (success > 0) {
            return "Success";
        }else  {
            return "Fail";
        }
    }
}
