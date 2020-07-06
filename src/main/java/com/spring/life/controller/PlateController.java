package com.spring.life.controller;

import com.spring.life.entity.Plate;
import com.spring.life.service.PlateService;
import org.hibernate.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/plate")
public class PlateController {

    @Autowired
    private PlateService plateService;

    @GetMapping("/list")
    public String saylist(Model theModel) {

        // get customers from the dao
        List<Plate> thePlates = plateService.getPlates();

        // add the customers to the model
        theModel.addAttribute("plates", thePlates);

        return "table";
    }

    @GetMapping("/add")
    public String plateadd(Model theModel) {

        Plate thePlate = new Plate();

        theModel.addAttribute("plate", thePlate);
        return "plate-form";
    }

    @PostMapping("/save")
    public String savePlate(@ModelAttribute("plate") Plate thePlate){

        System.out.println(thePlate);
        plateService.savePlate(thePlate);


        return "redirect:/plate/list";
    }

    @GetMapping("/update")
    public String update(@RequestParam("plateId") int theId, Model theModel) {

        Plate thePlate = plateService.getPlate(theId);

        theModel.addAttribute("plate", thePlate);

        return "plate-form";
    }

    @GetMapping("/delete")
    public String deletePlate(@RequestParam("plateId") int theId) {

        plateService.deletePlate(theId);

        return "redirect:/plate/list";

    }

    @GetMapping("/select")
    public String selectMain(@RequestParam("plateId") int theId, Model theModel) {

        List<Plate> mainplates = plateService.selectPlate(theId);

        theModel.addAttribute("mainplate", mainplates);
        return "mainText";
    }

}
