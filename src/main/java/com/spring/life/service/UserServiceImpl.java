package com.spring.life.service;

import com.spring.life.dao.UserDAO;
import com.spring.life.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDAO userDAO;

    @Override
    @Transactional
    public List login(User user) {
        return userDAO.login(user);
    }
}
