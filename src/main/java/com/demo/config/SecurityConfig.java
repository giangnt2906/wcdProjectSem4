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

        urlPatterns1.add("/userInfo");
        urlPatterns1.add("/employeeTask");
        urlPatterns1.add("/product/productList");
        urlPatterns1.add("/product/productAdd");
        urlPatterns1.add("/product/productEdit");
        urlPatterns1.add("/product/productDelete");
        urlPatterns1.add("/category/categoryList");
        urlPatterns1.add("/category/categoryAdd");
        urlPatterns1.add("/category/categoryEdit");
        urlPatterns1.add("/category/categoryDelete");

        mapConfig.put(ROLE_EMPLOYEE, urlPatterns1);

        // Cấu hình cho vai trò "MANAGER".
        List<String> urlPatterns2 = new ArrayList<String>();

        urlPatterns2.add("/userInfo");
        urlPatterns2.add("/managerTask");
        urlPatterns2.add("/employeeTask");
        urlPatterns2.add("/category/categoryList");
        urlPatterns2.add("/category/categoryAdd");
        urlPatterns2.add("/category/categoryEdit");
        urlPatterns2.add("/category/categoryDelete");
        urlPatterns2.add("/product/productList");
        urlPatterns2.add("/product/productAdd");
        urlPatterns2.add("/product/productEdit");
        urlPatterns2.add("/product/productDelete");
        urlPatterns2.add("/userAdd");
        urlPatterns2.add("/userManage");

        mapConfig.put(ROLE_MANAGER, urlPatterns2);
    }

    public static Set<String> getAllAppRoles() {
        return mapConfig.keySet();
    }

    public static List<String> getUrlPatternsForRole(String role) {
        return mapConfig.get(role);
    }
}
