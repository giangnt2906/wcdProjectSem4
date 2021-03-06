package com.demo.controller.backend.product;

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

@WebServlet(name = "ProductEditServlet", urlPatterns = "/backend/product/productEdit")
public class ProductEditServlet extends HttpServlet {
    //
    private ProductDao dao = new ProductDao();
    private CategoryDao categoryDao = new CategoryDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ValidateHelper validateHelper = new ValidateHelper();
        HashMap<String, ArrayList<String>> errors = validateHelper.validateProduct(request);
        String name = request.getParameter("name");
        String priceString = request.getParameter("price");
        int price = Integer.parseInt(priceString);
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        int categoryId = Integer.parseInt(request.getParameter("categoryId"));

        if(errors.size() > 0) {
            request.setAttribute("errors", errors);
            request.setAttribute("name", name);
            request.setAttribute("price", priceString);
            request.setAttribute("quantity", quantity);
            request.setAttribute("categoryId", categoryId);
            request.getRequestDispatcher("/product/productEdit.jsp").forward(request, response);
        } else {
            //product
            Product p = new Product();
            //set update
            int id = Integer.parseInt(request.getParameter("id"));
            //
            p.setId(id);
            p.setName(name);
            p.setPrice(price);
            p.setCategoryId(categoryId);
            p.setQuantity(quantity);
            dao.updateProduct(p);
            //
            response.sendRedirect("productList");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("id", request.getParameter("id"));
        int id = Integer.parseInt(request.getParameter("id"));

        //get product
        Product p = dao.getProduct(id);
        //
        request.setAttribute("id", p.getId());
        request.setAttribute("categoryName", p.getCategoryName());
        request.setAttribute("name", p.getName());
        request.setAttribute("price", p.getPrice());
        request.setAttribute("quantity", p.getQuantity());
        request.setAttribute("categoryName", p.getCategoryName());
        //
        request.setAttribute("product", p);
        request.setAttribute("categoryNames", getCategoryName());
        request.getRequestDispatcher("productEdit.jsp").forward(request, response);
    }

    private List<Category> getCategoryName() {
        return categoryDao.getAllCategory();
    }
}
