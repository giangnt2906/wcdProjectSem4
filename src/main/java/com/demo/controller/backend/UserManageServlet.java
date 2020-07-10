package com.demo.controller.backend;

import com.demo.dao.UserAccountDAO;
import com.demo.model.UserAccount;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "UserManageServlet", urlPatterns = "/backend/userManage")
public class UserManageServlet extends HttpServlet {
    private UserAccountDAO dao = new UserAccountDAO();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("users", getListUser());
        request.getRequestDispatcher("views/userListView.jsp").forward(request, response);
    }

    private List<UserAccount> getListUser() {
        return dao.getAllUser();
    }
}
