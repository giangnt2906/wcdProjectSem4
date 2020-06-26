package com.demo.controller.product;

import com.demo.dao.CategoryDao;
import com.demo.dao.ProductDao;
import com.demo.model.Category;
import com.demo.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductAddServlet", urlPatterns = "/product/productAdd")
public class ProductAddServlet extends HttpServlet {
    private CategoryDao dao = new CategoryDao();
    private ProductDao productDao = new ProductDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //
        String name = request.getParameter("name");
        String priceString = request.getParameter("price");
        int price = Integer.parseInt(priceString);
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        //
        Product p = new Product();
        p.setName(name);
        p.setQuantity(quantity);
        p.setPrice(price);
        p.setCategoryId(categoryId);
        productDao.insertProduct(p);
        //
        response.sendRedirect("productList");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("categoryNames", getCategoryName());
        request.getRequestDispatcher("product.jsp").forward(request, response);
    }

    private List<Category> getCategoryName() {
        return dao.getAllCategory();
    }
}
