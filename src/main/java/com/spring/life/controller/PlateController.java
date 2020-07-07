package com.spring.life.controller;

import com.spring.life.entity.Plate;
import com.spring.life.service.PlateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/plate")
public class PlateController {

    @Autowired
    private PlateService plateService;

    @GetMapping("/list")
    public ModelAndView saylist(@RequestParam(required = false) Integer page) {
        ModelAndView modelAndView = new ModelAndView("table");
        // get customers from the dao
        List<Plate> thePlates = plateService.getPlates();

        PagedListHolder<Plate> pagedListHolder = new PagedListHolder<>(thePlates);
        pagedListHolder.setPageSize(10);
        modelAndView.addObject("maxPages", pagedListHolder.getPageCount());

        if(page==null || page < 1 || page > pagedListHolder.getPageCount())page=1;

        modelAndView.addObject("page", page);
        if(page == null || page < 1 || page > pagedListHolder.getPageCount()){
            pagedListHolder.setPage(0);
            modelAndView.addObject("plates", pagedListHolder.getPageList());
        }
        else if(page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page-1);
            modelAndView.addObject("plates", pagedListHolder.getPageList());
        }
        return modelAndView;
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
