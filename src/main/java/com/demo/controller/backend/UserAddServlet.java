package com.demo.controller.backend;

import com.demo.dao.UserAccountDAO;
import com.demo.model.UserAccount;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Collections;

@WebServlet(name = "UserAddServlet", urlPatterns = "/backend/userAdd")
public class UserAddServlet extends HttpServlet {
    private UserAccountDAO dao = new UserAccountDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String gender = request.getParameter("gender");
        String password = request.getParameter("password");
        String roles = request.getParameter("roles");
        //
        UserAccount c = new UserAccount();
        c.setUserName(username);
        c.setGender(gender);
        c.setPassword(password);
        c.setRoles(Collections.singletonList(roles));
        //
        dao.addUser(c);
        //response.sendRedirect("userManage");
        response.sendRedirect(request.getContextPath() + "/backend/userManage");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("views/userAddView.jsp").forward(request, response);
    }
}
