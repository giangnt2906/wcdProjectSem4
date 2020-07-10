package com.demo.controller.backend.category;

import com.demo.dao.CategoryDao;
import com.demo.dao.ProductDao;
import com.demo.model.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CategoryEditServlet", urlPatterns = "/backend/category/categoryEdit")
public class CategoryEditServlet extends HttpServlet {
    //
    private CategoryDao categoryDao = new CategoryDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //category
        Category p = new Category();
        //set update
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        String desc = request.getParameter("desc");
        //
        p.setId(id);
        p.setName(name);
        p.setDesc(desc);
        categoryDao.updateCategory(p);
        //
        response.sendRedirect("categoryList");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        //get category
        Category p = categoryDao.getCategory(id);
        //
        request.setAttribute("id", p.getId());
        request.setAttribute("name", p.getName());
        request.setAttribute("desc", p.getDesc());
        //
        request.getRequestDispatcher("categoryEdit.jsp").forward(request, response);
    }
}
