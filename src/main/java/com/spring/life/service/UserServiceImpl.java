package com.spring.life.service;

import com.spring.life.dao.PlateDAO;
import com.spring.life.dao.UserDAO;
import com.spring.life.entity.User;
import com.spring.life.util.AuthInfo;
import com.spring.life.util.IdPasswordNotMatchingException;
import com.spring.life.util.Login;
import org.springframework.beans.factory.annotation.Autowired;

public class UserServiceImpl implements UserService{

    @Autowired
    private UserDAO userDAO;

    @Override
    public AuthInfo loginAuth(Login login) {
        User user = userDAO.selectById(login.getId());
        if(user == null) {
            throw new IdPasswordNotMatchingException();
        }
        if(!user.matchPassword(login.getPw())) {
            throw new IdPasswordNotMatchingException();
        }
        return new AuthInfo(user.getUser_id(), user.getUser_pass(), user.getUser_name());

    }
}
