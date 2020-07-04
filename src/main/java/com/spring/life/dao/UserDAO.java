package com.spring.life.dao;

import com.spring.life.entity.User;

public interface UserDAO {
    public User selectById(String id);
}
