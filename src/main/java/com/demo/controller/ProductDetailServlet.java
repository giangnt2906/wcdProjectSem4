package com.demo.controller;

import com.demo.dao.ProductDao;
import com.demo.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ProductDetailServlet",urlPatterns = "/productDetail")
public class ProductDetailServlet extends HttpServlet {
    ProductDao dao = new ProductDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("id", request.getParameter("id"));
        int id = Integer.parseInt(request.getParameter("id"));


        request.getRequestDispatcher("product.jsp").forward(request,response);
    }
}
