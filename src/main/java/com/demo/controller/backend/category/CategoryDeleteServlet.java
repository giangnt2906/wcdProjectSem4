package com.demo.controller.backend.category;

import com.demo.dao.CategoryDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CategoryDeleteServlet", urlPatterns = "/backend/category/categoryDelete")
public class CategoryDeleteServlet extends HttpServlet {
    private CategoryDao dao = new CategoryDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String mes = deleteDB(id);
        request.setAttribute("mes", mes);
        response.sendRedirect("categoryList");
    }

    private String deleteDB(int id) {
        int success = dao.deleteCategory(id);
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
