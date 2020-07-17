package com.spring.life.controller;



import com.spring.life.entity.Plate;
import com.spring.life.service.PlateService;
import org.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private PlateService plateService;

    @GetMapping("/")
    public String home() {
        return "index";
    }

    @RequestMapping(value="/leftnewlist", produces="application/json; charset=utf8")
    @ResponseBody
    public ResponseEntity ajax_commentList(HttpServletRequest request) throws Exception{

        HttpHeaders responseHeaders = new HttpHeaders();
        ArrayList<HashMap> hmlist = new ArrayList<HashMap>();

        // 해당 게시물 댓글
        List<Plate> leftlist = plateService.leftlist();

        if(leftlist.size() > 0){
            for(int i=0; i<leftlist.size(); i++){
                HashMap hm = new HashMap();
                hm.put("Id", leftlist.get(i).getId());
                hm.put("intro", leftlist.get(i).getIntro());

                hmlist.add(hm);
            }

        }

        JSONArray json = new JSONArray(hmlist);
        return new ResponseEntity(json.toString(), responseHeaders, HttpStatus.CREATED);

    }



}
