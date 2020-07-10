package com.spring.life.controller;



import org.mariadb.jdbc.internal.logging.Logger;
import org.mariadb.jdbc.internal.logging.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;

import static com.spring.life.controller.Constants.DOWNLOAD_PATH;
import static com.spring.life.controller.Constants.SINGLE_FILE_UPLOAD_PATH;

@Controller
public class HomeController {


    @GetMapping("/")
    public String home(Model model) {
        return "index";
    }

    @GetMapping("/uploads")
    public String fileUploadForm(Model model) {
        return "upload";
    }

    @PostMapping("/singleFileUpload")
    public String singleFileUpload(@RequestParam("mediaFile") MultipartFile file, Model model)
            throws IOException {

        // Save mediaFile on system
        if (!file.getOriginalFilename().isEmpty()) {
            file.transferTo(new File(DOWNLOAD_PATH + "/" + SINGLE_FILE_UPLOAD_PATH, file.getOriginalFilename()));
            model.addAttribute("msg", "File uploaded successfully.");
        } else {
            model.addAttribute("msg", "Please select a valid mediaFile..");
        }

        return "upload";
    }



}
