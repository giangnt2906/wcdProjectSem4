package com.demo.controller.backend.category;

import com.demo.dao.CategoryDao;
import com.demo.model.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoryListServlet", urlPatterns = "/backend/category/categoryList")
public class CategoryListServlet extends HttpServlet {

    private CategoryDao categoryDao = new CategoryDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("categories", getAllCategory());
        request.getRequestDispatcher("categoryList.jsp").forward(request, response);
    }

    private List<Category> getAllCategory() {
        return categoryDao.getAllCategory();
    }
}
