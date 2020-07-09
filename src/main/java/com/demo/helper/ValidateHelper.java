package com.testPrepare.helper;

import com.testPrepare.entity.Student;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;

public class ValidateHelper {
    public static HashMap<String, ArrayList<String>> validateStudent(HttpServletRequest request) {
        HashMap<String, ArrayList<String>> errors = new HashMap<>();
        String username = request.getParameter("username");
        if (username == null || username.isEmpty()) {
            ArrayList<String> nameErrors = new ArrayList<>();
            if (errors.containsKey("username")) {
                nameErrors = errors.get("name");
            }
            nameErrors.add("Username is required!");
            errors.put("username", nameErrors);
        } else if (username.length() < 5 || username.length() > 20) {
            ArrayList<String> nameErrors = new ArrayList<>();
            if (errors.containsKey("username")) {
                nameErrors = errors.get("username");
            }
            nameErrors.add("Username must be 5 to 20 character!");
            errors.put("username", nameErrors);
        }

        String strAge = request.getParameter("age");
        if (strAge == null || strAge.isEmpty()) {
            ArrayList<String> ageErrors = new ArrayList<>();
            if (errors.containsKey("age")) {
                ageErrors = errors.get("age");
            }
            ageErrors.add("Age is required!");
            errors.put("age", ageErrors);
        }
        try {
            int age = Integer.parseInt(strAge);
        } catch (NumberFormatException ex) {
            ArrayList<String> ageErrors = new ArrayList<>();
            if (errors.containsKey("age")) {
                ageErrors = errors.get("age");
            }
            ageErrors.add("Age must be a number!");
            errors.put("age", ageErrors);
        }
        return errors;
    }
}
