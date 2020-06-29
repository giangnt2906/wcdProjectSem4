package com.demo.dao;

import com.demo.config.SecurityConfig;
import com.demo.model.UserAccount;
import com.demo.utils.ConnectionUtils;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

public class UserAccountDAO {
    private Connection connection;
    /*private static final Map<String, UserAccount> mapUsers = new HashMap<String, UserAccount>();*/

    {
        try {
            connection = ConnectionUtils.getConnection();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @SuppressWarnings("Duplicates")
    public UserAccount getUserAccount(int id) {
        String sql = "SELECT * FROM user_table WHERE user_table.id = ?";
        UserAccount p = new UserAccount();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                String username = rs.getString("username");
                String gender = rs.getString("gender");
                String password = rs.getString("password");
                String roles = rs.getString("roles");

                p.setId(id);
                p.setUserName(username);
                p.setGender(gender);
                p.setPassword(password);
                p.setRoles(Collections.singletonList(roles));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return p;
    }

    @SuppressWarnings("Duplicates")
    public UserAccount getUserAccountByName(String name) {
        String sql = "SELECT * FROM user_table WHERE user_table.username = ?";
        UserAccount p = new UserAccount();
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, name);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String username = rs.getString("username");
                String gender = rs.getString("gender");
                String password = rs.getString("password");
                String roles = rs.getString("roles");

                p.setId(id);
                p.setUserName(username);
                p.setGender(gender);
                p.setPassword(password);
                p.setRoles(Collections.singletonList(roles));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return p;
    }

    public int addUser(UserAccount userAccount) {
        String sql = "INSERT INTO user_table (username, gender, password, roles) VALUES(?,?,?,?)";
        int success = 0;
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, userAccount.getUserName());
            ps.setString(2, userAccount.getGender());
            ps.setString(3, userAccount.getPassword());
            ps.setString(4, userAccount.getSingularRole());
            success = ps.executeUpdate();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return success;
    }

    public List<UserAccount> getAllUser() {
        List<UserAccount> list = new ArrayList<UserAccount>();
        String sql = "SELECT * FROM user_table";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("username");
                String gender = rs.getString("gender");
                String pass = rs.getString("password");
                String roles = rs.getString("roles");

                UserAccount p = new UserAccount(id, name, gender, pass, roles);
                list.add(p);

            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }

    // Tìm kiếm người dùng theo userName và password.
    public static UserAccount findUser(String userName, String password) {
        UserAccountDAO dao = new UserAccountDAO();
        UserAccount p = dao.getUserAccountByName(userName);
        if (p.getPassword() == null) {
            return null;
        }
        if (p.getPassword().equals(password)) {
            return p;
        }
        return null;
    }
}
