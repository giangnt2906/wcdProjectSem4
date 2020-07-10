package com.demo.config;

import java.util.*;

public class SecurityConfig {
    public static final String ROLE_MANAGER = "MANAGER";
    public static final String ROLE_EMPLOYEE = "EMPLOYEE";

    // String: Role
    // List<String>: urlPatterns.
    private static final Map<String, List<String>> mapConfig = new HashMap<String, List<String>>();

    static {
        init();
    }

    private static void init() {

        // Cấu hình cho vai trò "EMPLOYEE".
        List<String> urlPatterns1 = new ArrayList<String>();

        urlPatterns1.add("/backend/userInfo");
        urlPatterns1.add("/backend/home");
        urlPatterns1.add("/backend/employeeTask");
        urlPatterns1.add("/backend/product/productList");
        urlPatterns1.add("/backend/product/productAdd");
        urlPatterns1.add("/backend/product/productEdit");
        urlPatterns1.add("/backend/product/productDelete");
        urlPatterns1.add("/backend/category/categoryList");
        urlPatterns1.add("/backend/category/categoryAdd");
        urlPatterns1.add("/backend/category/categoryEdit");
        urlPatterns1.add("/backend/category/categoryDelete");

        mapConfig.put(ROLE_EMPLOYEE, urlPatterns1);

        // Cấu hình cho vai trò "MANAGER".
        List<String> urlPatterns2 = new ArrayList<String>();

        urlPatterns2.add("/backend/userInfo");
        urlPatterns2.add("/backend/managerTask");
        urlPatterns2.add("/backend/employeeTask");
        urlPatterns2.add("/backend/category/categoryList");
        urlPatterns2.add("/backend/category/categoryAdd");
        urlPatterns2.add("/backend/category/categoryEdit");
        urlPatterns2.add("/backend/category/categoryDelete");
        urlPatterns2.add("/backend/product/productList");
        urlPatterns2.add("/backend/product/productAdd");
        urlPatterns2.add("/backend/product/productEdit");
        urlPatterns2.add("/backend/product/productDelete");
        urlPatterns2.add("/backend/userAdd");
        urlPatterns2.add("/backend/userManage");
        urlPatterns2.add("/backend/home");

        mapConfig.put(ROLE_MANAGER, urlPatterns2);
    }

    public static Set<String> getAllAppRoles() {
        return mapConfig.keySet();
    }

    public static List<String> getUrlPatternsForRole(String role) {
        return mapConfig.get(role);
    }
}
