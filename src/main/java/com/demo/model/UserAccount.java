package com.demo.model;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class UserAccount {
    /*public static final String GENDER_MALE = "M";
    public static final String GENDER_FEMALE = "F";*/

    private int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public UserAccount(int id, String userName, String gender, String password, String... roles) {
        this.id = id;
        this.userName = userName;
        this.gender = gender;
        this.password = password;
        this.roles = new ArrayList<String>();
        if (roles != null) {
            Collections.addAll(this.roles, roles);
        }
    }

    private String userName;
    private String gender;
    private String password;

    private List<String> roles;

    public UserAccount(String userName, String gender, String password, String... roles) {
        this.userName = userName;
        this.gender = gender;
        this.password = password;
        this.roles = new ArrayList<String>();
        if (roles != null) {
            Collections.addAll(this.roles, roles);
        }
    }

    public UserAccount() {
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public List<String> getRoles() {
        return roles;
    }

    public String getSingularRole() {
        return roles.get(0);
    }

    public void setRoles(List<String> roles) {
        this.roles = roles;
    }
}
