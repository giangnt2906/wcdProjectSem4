package com.demo.helper;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;

public class ValidateHelper {
    public static HashMap<String, ArrayList<String>> validateProduct(HttpServletRequest request) {
        HashMap<String, ArrayList<String>> errors = new HashMap<>();
        String name = request.getParameter("name");
        if (name == null || name.isEmpty()) {
            ArrayList<String> nameErrors = new ArrayList<>();
            nameErrors.add("Name is required!");
            errors.put("name", nameErrors);
        } else if (name.length() < 5 || name.length() > 20) {
            ArrayList<String> nameErrors = new ArrayList<>();
            nameErrors.add("Name must be 5 to 20 character!");
            errors.put("name", nameErrors);
        }

        String strPrice = request.getParameter("price");
        if (strPrice == null || strPrice.isEmpty()) {
            ArrayList<String> priceErrors = new ArrayList<>();
            if (errors.containsKey("price")) {
                priceErrors = errors.get("price");
            }
            priceErrors.add("Price is required!");
            errors.put("price", priceErrors);
        }

        String strQuantity = request.getParameter("quantity");
        if (strQuantity == null || strQuantity.isEmpty()) {
            ArrayList<String> quantityErrors = new ArrayList<>();
            if (errors.containsKey("quantity")) {
                quantityErrors = errors.get("quantity");
            }
            quantityErrors.add("Quantity is required!");
            errors.put("quantity", quantityErrors);
        }
        try {
            int price = Integer.parseInt(strPrice);
            int quantity = Integer.parseInt(strQuantity);
        } catch (NumberFormatException ex) {
            ArrayList<String> priceErrors = new ArrayList<>();
            ArrayList<String> quantityErrors = new ArrayList<>();
            if (errors.containsKey("price")) {
                priceErrors = errors.get("price");
            }
            if(errors.containsKey("quantity")) {
                quantityErrors = errors.get("quantity");
            }

            priceErrors.add("Price must be a number!");
            quantityErrors.add("Quantity must be a number!");
            errors.put("price", priceErrors);
            errors.put("quantity", quantityErrors);
        }
        return errors;
    }
}
