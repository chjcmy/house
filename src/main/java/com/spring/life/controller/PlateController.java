package com.spring.life.controller;

import com.spring.life.entity.MediaVO;
import com.spring.life.entity.Pic;
import com.spring.life.entity.Plate;
import com.spring.life.service.PlateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.Set;

import static com.spring.life.controller.Constants.*;

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

        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) page = 1;

        modelAndView.addObject("page", page);
        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(0);
            modelAndView.addObject("plates", pagedListHolder.getPageList());
        } else if (page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page - 1);
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
    public String savePlate(@ModelAttribute("plate") Plate thePlate,@RequestParam("mediaFile") MultipartFile[] multipartFiles) throws IOException {


        String picnum = plateService.savePlate(thePlate);

        MultipartFile[] files = multipartFiles;

        for (MultipartFile file : files) {
            if (!file.getOriginalFilename().isEmpty()) {
                BufferedOutputStream outputStream = new BufferedOutputStream(
                        new FileOutputStream(
                                new File(DOWNLOAD_PATH + "/" , file.getOriginalFilename())));
                String picpath =  "resources/pic/" + file.getOriginalFilename();

                plateService.picsave(picnum, picpath);
                outputStream.write(file.getBytes());
                outputStream.flush();
                outputStream.close();
            }
        }

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
        List<Pic> mainpics = plateService.getPic(theId);

        theModel.addAttribute("mainplate", mainplates);
        theModel.addAttribute("pic", mainpics);

        return "mainText";
    }

    @GetMapping("/selectlist")
    public ModelAndView selectlist(@RequestParam String id,Model model,@RequestParam(required = false) Integer page) {
        ModelAndView modelAndView = new ModelAndView("table");

        List<Plate> thePlates = plateService.selectlist(id);

        PagedListHolder<Plate> pagedListHolder = new PagedListHolder<>(thePlates);
        pagedListHolder.setPageSize(10);
        modelAndView.addObject("maxPages", pagedListHolder.getPageCount());

        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) page = 1;

        modelAndView.addObject("page", page);
        if (page == null || page < 1 || page > pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(0);
            modelAndView.addObject("plates", pagedListHolder.getPageList());
        } else if (page <= pagedListHolder.getPageCount()) {
            pagedListHolder.setPage(page - 1);
            modelAndView.addObject("plates", pagedListHolder.getPageList());
        }
        return modelAndView;
    }

}
