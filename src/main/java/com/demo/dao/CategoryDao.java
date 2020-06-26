package com.demo.dao;

import com.demo.model.Category;
import com.demo.utils.ConnectionUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDao {
    Connection connection;

    {
        try {
            connection = ConnectionUtils.getConnection();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<Category>();
        String sql = "SELECT * FROM category";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String desc = rs.getString("description");

                Category p = new Category(id, name, desc);
                list.add(p);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

    public Category getCategory(int id) {
        String sql = "SELECT * FROM category WHERE id = ?";
        Category p = new Category();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String name = rs.getString("name");
                String desc = rs.getString("description");

                p.setId(id);
                p.setName(name);
                p.setDesc(desc);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return p;
    }

    public int addCategory(Category p) {
        String sql = "INSERT INTO category (name, description) VALUES(?,?)";
        int success = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, p.getName());
            ps.setString(2, p.getDesc());
            success = ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return success;
    }

    public int deleteCategory(int id) {
        String sql = "DELETE FROM category WHERE id = ?";
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

    public int updateCategory(Category p) {
        String sql = "UPDATE category SET name = ?, description = ? WHERE id = ?";
        int success = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, p.getName());
            ps.setString(2, p.getDesc());
            ps.setInt(3, p.getId());
            success = ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return success;
    }
}
