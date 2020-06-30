package com.spring.life.controller;

import com.spring.life.dao.PlateDAO;
import com.spring.life.entity.Plate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class HomeController {


    @Autowired
    private PlateDAO plateDAO;

    @GetMapping("/")
    public String home(Model model) {
        return "index";
    }

    @RequestMapping("/board/list")
    public String cold(Model theModel) {

        // get customers from the dao
        List<Plate> thePlates = plateDAO.getPlates();

        // add the customers to the model
        theModel.addAttribute("plates", thePlates);

        return "table";
    }
}
