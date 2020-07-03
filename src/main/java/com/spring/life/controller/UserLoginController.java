package com.spring.life.controller;

import com.spring.life.util.LoginCommand;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;

@Controller
@RequestMapping("/user")
public class UserLoginController {

    @Resource(name = "userService")
    private UserService userService;

    @GetMapping("/login")
    public ModelAndView loginForm(LoginCommand loginCommand,
                                  @CookieValue(value="REMEMBER", required=false) Cookie rememberCookie) throws Exception {

        if(rememberCookie!=null) {
            loginCommand.setId(rememberCookie.getValue());
            loginCommand.setRememberId(true);
        }

        ModelAndView mv = new ModelAndView("user/login/loginForm");
        return mv;
    }

}
