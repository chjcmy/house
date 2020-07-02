package com.spring.life.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;

@Controller
@RequestMapping("/user")
public class UserController {

    private static final long serialVersionUID = 1L;

    @RequestMapping(value="/login", method= RequestMethod.GET)
    public ModelAndView loginForm(@CookieValue(value="REMEMBER", required=false) Cookie rememberCookie) throws Exception {


        ModelAndView mv = new ModelAndView("loginForm");
        return mv;

    }

}
