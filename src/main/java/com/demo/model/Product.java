package com.demo.model;

import java.util.ArrayList;

public class Product {
    private int id;
    private String name;
    private int price;
    private int quantity;
    private int categoryId;
    // array list image
    private ArrayList<String> image_urls = new ArrayList<String>();
    private String categoryName;
    // string img
    private String img_urls;

    public String getImg_urls() {
        return img_urls;
    }

    public void setImg_urls(String img_urls) {
        this.img_urls = img_urls;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public Product(int id, String name, int price, int quantity, String categoryName, String image_urls) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.categoryName = categoryName;
        this.img_urls = image_urls;
    }

    public Product(int id, String name, int price, int quantity, int categoryId, String image_urls) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.categoryId = categoryId;
        this.img_urls = image_urls;
    }

    public Product(int id, String name, int price, int quantity, String categoryName) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.categoryName = categoryName;
    }

    public Product(int id, String name, int price, int quantity, String categoryName, ArrayList<String> image_urls) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.categoryName = categoryName;
        this.image_urls = image_urls;
    }

    public Product(int id, String name, int price, int quantity, int categoryId, ArrayList<String> image_urls) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.categoryId = categoryId;
        this.image_urls = image_urls;
    }

    public ArrayList<String> getImage_urls() {
        return image_urls;
    }

    public void setImage_urls(ArrayList<String> image_urls) {
        this.image_urls = image_urls;
    }

    public Product(int id, String name, int price, int quantity, int categoryId) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.categoryId = categoryId;
    }

    public Product() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }
}
