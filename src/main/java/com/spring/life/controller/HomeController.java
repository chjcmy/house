package com.spring.life.controller;

import com.spring.life.dao.PlateDAO;
import com.spring.life.entity.Plate;
import com.spring.life.service.PlateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class HomeController {

    @GetMapping("/")
    public String home(Model model) {
        return "index";
    }

}
