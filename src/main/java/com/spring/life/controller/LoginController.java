package com.spring.life.controller;

import com.spring.life.service.UserService;
import com.spring.life.util.AuthInfo;
import com.spring.life.util.IdPasswordNotMatchingException;
import com.spring.life.util.Login;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

@Controller
@RequestMapping("/user")
public class LoginController {

    @Resource(name="userService")
    private UserService userService;

    @GetMapping("/login")
    public ModelAndView loginForm(Login login,
                                  @CookieValue(value="REMEMBER", required=false) Cookie rememberCookie)  {

        if (rememberCookie != null) {
            login.setId(rememberCookie.getValue());
            login.setRememberId(true);
        }

        ModelAndView mv = new ModelAndView("loginForm");
        return mv;
    }
    @PostMapping("/login")
    public ModelAndView loginSuccess(Login login, BindingResult bindingResult,
                                     HttpSession session, HttpServletResponse response)  {

        if(bindingResult.hasErrors()) {
            ModelAndView mv = new ModelAndView("user/login/loginForm");
            return mv;
        }

        try {

            AuthInfo authInfo = userService.loginAuth(login);
            session.setAttribute("authInfo", authInfo);

            Cookie rememberCookie = new Cookie("REMEMBER", login.getId());
            rememberCookie.setPath("/");
            if(login.isRememberId()) {
                rememberCookie.setMaxAge(60*60*24*7);
            } else {
                rememberCookie.setMaxAge(0);
            }
            response.addCookie(rememberCookie);

        } catch (IdPasswordNotMatchingException e) {
            bindingResult.rejectValue("pw", "notMatch", "아이디와 비밀번호가 맞지않습니다.");
            ModelAndView mv = new ModelAndView("loginForm");
            return mv;
        }

        ModelAndView mv = new ModelAndView("index");
        return mv;
    }

}
