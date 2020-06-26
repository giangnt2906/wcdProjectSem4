package com.demo.dao;

import com.demo.model.Product;
import com.demo.utils.ConnectionUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDao {
    private Connection connection;

    {
        try {
            connection = ConnectionUtils.getConnection();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Product getProduct(int id) {
        String sql = "SELECT * FROM product JOIN category ON product.categoryId=category.id WHERE product.id = ?";
        Product p = new Product();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                int price = rs.getInt("price");
                int quantity = rs.getInt("quantity");
                int categoryID = rs.getInt("categoryId");
                String categoryName = rs.getString("category.name");

                p.setId(id);
                p.setQuantity(quantity);
                p.setCategoryId(categoryID);
                p.setName(name);
                p.setPrice(price);
                p.setCategoryName(categoryName);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return p;
    }

    public int insertProduct(Product p) {
        String sql = "INSERT INTO product (name, price, quantity, categoryID) VALUES(?,?,?,?)";
        int success = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, p.getName());
            ps.setInt(2, p.getPrice());
            ps.setInt(3, p.getQuantity());
            ps.setInt(4, p.getCategoryId());
            success = ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return success;
    }

    public int updateProduct(Product p) {
        String sql = "UPDATE product SET name = ?, price = ?, categoryId = ?, quantity = ? WHERE id = ?";
        int success = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, p.getName());
            ps.setInt(2, p.getPrice());
            ps.setInt(3, p.getCategoryId());
            ps.setInt(4, p.getQuantity());
            ps.setInt(5, p.getId());
            success = ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return success;
    }


    public int deleteProduct(int id) {
        String sql = "DELETE FROM product WHERE id = ?";
        int success = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            success = ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return success;
    }

    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<Product>();
        String sql = "SELECT * FROM product join category on product.categoryId = category.id";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("product.id");
                String name = rs.getString("product.name");
                int price = rs.getInt("product.price");
                int quantity = rs.getInt("product.quantity");
                String categoryName = rs.getString("category.name");

                Product p = new Product(id, name, price, quantity, categoryName);
                list.add(p);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }

        return list;

    }
}
