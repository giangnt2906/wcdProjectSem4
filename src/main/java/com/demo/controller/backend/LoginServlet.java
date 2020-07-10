package com.demo.controller.backend;

import com.demo.dao.UserAccountDAO;
import com.demo.model.UserAccount;
import com.demo.utils.AppUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = "/backend/login")
public class LoginServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public LoginServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        UserAccount userAccount = UserAccountDAO.findUser(userName, password);

        if (userAccount == null) {
            String errorMessage = "Invalid Username or Password";

            request.setAttribute("errorMessage", errorMessage);

            request.getRequestDispatcher("views/loginView.jsp").forward(request, response);
            return;
        }

        AppUtils.storeLoginedUser(request.getSession(), userAccount);

        //
        int redirectId = -1;
        try {
            redirectId = Integer.parseInt(request.getParameter("redirectId"));
        } catch (Exception e) {
        }
        String requestUri = AppUtils.getRedirectAfterLoginUrl(request.getSession(), redirectId);
        if (requestUri != null) {
            response.sendRedirect(requestUri);
        } else {
            // Mặc định sau khi đăng nhập thành công
            // chuyển hướng về trang /userInfo
            response.sendRedirect(request.getContextPath() + "/backend/userInfo");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("views/loginView.jsp").forward(request, response);
    }
}
