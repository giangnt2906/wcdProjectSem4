package com.demo.controller;

import com.demo.dao.CategoryDao;
import com.demo.model.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HomeServlet", urlPatterns = "/home")
public class HomeServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    CategoryDao dao = new CategoryDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("numberOfProductsInCategory", getNumberOfProductsInCategory());
        request.getRequestDispatcher("views/homeView.jsp").forward(request, response);
    }

    private List<Category> getNumberOfProductsInCategory() {
        return dao.getNumberOfProducts();
    }
}
