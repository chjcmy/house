package com.spring.life.controller;

import com.spring.life.entity.User;
import com.spring.life.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/loginform")
    public String home(Model model) {
        return "loginForm";
    }

    @PostMapping("/login")
    public String login(User user, HttpServletRequest Request, RedirectAttributes Redirect) {

        System.out.println(user);
        HttpSession session = Request.getSession();
        List login = userService.login(user);

        if(login == null) {
            session.setAttribute("user", null);
            Redirect.addFlashAttribute("msg", false);
        }else {
            session.setAttribute("user", login);
        }
        System.out.println(user);
        return "redirect:/";
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {

        session.invalidate();

        return "redirect:/";
    }
}
