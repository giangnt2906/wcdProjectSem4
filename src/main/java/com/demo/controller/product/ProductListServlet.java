package com.demo.controller.product;

import com.demo.dao.ProductDao;
import com.demo.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductListServlet", urlPatterns = "/product/productList")
public class ProductListServlet extends HttpServlet {
    private ProductDao dao = new ProductDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("products", getAllProduct());
        request.getRequestDispatcher("productList.jsp").forward(request, response);
    }

    private List<Product> getAllProduct() {
        return dao.getAllProduct();
    }
}
