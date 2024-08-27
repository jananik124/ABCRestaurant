package com.testaurant.service;

import com.restaurant.dao.UserDao;
import com.restaurant.model.UserModel;

public class UserService {

    private UserDao userDao;

    public UserService() {
        this.userDao = new UserDao();
    }

    public boolean registerUser(UserModel user) {
        return userDao.registerUser(user);
    }

    public UserModel loginUser(String email, String password) {
        return userDao.loginUser(email, password);
    }
}
