package com.demo.dao;

import com.demo.config.SecurityConfig;
import com.demo.model.UserAccount;

import java.util.HashMap;
import java.util.Map;

public class UserAccountDAO {
    private static final Map<String, UserAccount> mapUsers = new HashMap<String, UserAccount>();

    static {
        initUsers();
    }

    private static void initUsers() {

        // User này có 1 vai trò là EMPLOYEE.
        UserAccount emp = new UserAccount("employee1", UserAccount.GENDER_MALE, "123",//
                SecurityConfig.ROLE_EMPLOYEE);

        // User này có 2 vai trò EMPLOYEE và MANAGER.
        UserAccount mng = new UserAccount("manager1", UserAccount.GENDER_FEMALE, "123", //
                SecurityConfig.ROLE_EMPLOYEE, SecurityConfig.ROLE_MANAGER);

        mapUsers.put(emp.getUserName(), emp);
        mapUsers.put(mng.getUserName(), mng);
    }

    // Tìm kiếm người dùng theo userName và password.
    public static UserAccount findUser(String userName, String password) {
        UserAccount u = mapUsers.get(userName);
        if (u != null && u.getPassword().equals(password)) {
            return u;
        }
        return null;
    }
}
