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


  @Autowired
  private PlateService plateService;

    @GetMapping("/")
    public String home(Model model) {
        return "index";
    }

    @GetMapping("/plate/list")
    public String saylist(Model theModel) {

        // get customers from the dao
        List<Plate> thePlates = plateService.getPlates();

        // add the customers to the model
        theModel.addAttribute("plates", thePlates);

        return "table";
    }

    @GetMapping("/plate/add")
    public String plateadd(Model theModel) {

        Plate thePlate = new Plate();

        theModel.addAttribute("plate", thePlate);
        return "plate-form";
    }

    @PostMapping("/plate/save")
    public String savePlate(@ModelAttribute("plate") Plate thePlate){

        System.out.println(thePlate);
       plateService.savePlate(thePlate);


        return "redirect:/plate/list";
    }

    @GetMapping("/plate/update")
    public String update(@RequestParam("plateId") int theId, Model theModel) {

        Plate thePlate = plateService.getPlate(theId);

        theModel.addAttribute("plate", thePlate);

        return "plate-form";
    }
}
