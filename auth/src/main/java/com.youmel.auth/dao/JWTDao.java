package com.youmel.auth.dao;

import com.youmel.auth.pojo.User;

/**
 * Created by CDDF on 2017/10/25.
 */
public interface JWTDao {
    public User findByUserName(String username);
}
