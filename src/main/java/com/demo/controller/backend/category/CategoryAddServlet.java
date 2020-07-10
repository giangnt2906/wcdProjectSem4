package com.demo.controller.backend.category;

import com.demo.dao.CategoryDao;
import com.demo.model.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CategoryAddServlet", urlPatterns = "/backend/category/categoryAdd")
public class CategoryAddServlet extends HttpServlet {
    private CategoryDao categoryDao = new CategoryDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String desc = request.getParameter("desc");
        //
        Category c = new Category();
        c.setDesc(desc);
        c.setName(name);
        //
        categoryDao.addCategory(c);
        response.sendRedirect("categoryList");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("category.jsp").forward(request, response);
    }
}
