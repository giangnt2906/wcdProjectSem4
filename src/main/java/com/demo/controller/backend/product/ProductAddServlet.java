package com.demo.controller.backend.product;

import com.demo.customException.CustomException;
import com.demo.dao.CategoryDao;
import com.demo.dao.ProductDao;
import com.demo.helper.ValidateHelper;
import com.demo.model.Category;
import com.demo.model.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@WebServlet(name = "ProductAddServlet", urlPatterns = "/backend/product/productAdd")
public class ProductAddServlet extends HttpServlet {

    private CategoryDao dao = new CategoryDao();
    private ProductDao productDao = new ProductDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ValidateHelper validateHelper = new ValidateHelper();
        HashMap<String, ArrayList<String>> errors = validateHelper.validateProduct(request);

        String name = request.getParameter("name");
        String priceString = request.getParameter("price");
        int price = Integer.parseInt(priceString);
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));
        String img_urls = request.getParameter("strImageUrl");

        if(errors.size() > 0) {
            request.setAttribute("errors", errors);
            request.setAttribute("name", name);
            request.setAttribute("price", priceString);
            request.setAttribute("quantity", quantity);
            request.setAttribute("categoryId", categoryId);
            request.getRequestDispatcher("/product/product.jsp").forward(request, response);
        } else {
            //
            Product p = new Product();
            p.setName(name);
            p.setQuantity(quantity);
            p.setPrice(price);
            p.setCategoryId(categoryId);
            //
            p.setImg_urls(img_urls);
            //
            productDao.insertProduct(p);
            //
            response.sendRedirect("productList");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("categoryNames", getCategoryName());
        request.getRequestDispatcher("product.jsp").forward(request, response);
    }

    private List<Category> getCategoryName() {
        return dao.getAllCategory();
    }
}
