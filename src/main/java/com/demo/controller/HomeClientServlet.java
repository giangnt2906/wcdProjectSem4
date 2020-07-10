package com.demo.controller;

import com.demo.dao.ProductDao;
import com.demo.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeClientServlet", urlPatterns = "/homeclient")
public class HomeClientServlet extends HttpServlet {
    ProductDao dao = new ProductDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("products", getListProduct());
        request.getRequestDispatcher("home.jsp").forward(request,response);
    }

    protected List<Product> getListProduct(){
        List<Product> products = dao.getAllProduct();
        return products;
    }
}
