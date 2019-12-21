package com.chzu.ice.service;

import com.chzu.ice.dao.AuthDao;

public class AuthService {
    public static boolean login(String username, String password) {
        return AuthDao.login(username, password);
    }
}
