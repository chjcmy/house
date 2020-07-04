package com.spring.life.service;

import com.spring.life.util.AuthInfo;
import com.spring.life.util.Login;

public interface UserService {
    public AuthInfo loginAuth(Login login);
}
