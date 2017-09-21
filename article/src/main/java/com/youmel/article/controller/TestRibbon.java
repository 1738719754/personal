package com.youmel.article.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

/**
 * Created by CDDF on 2017/9/21.
 */
@Controller
public class TestRibbon {
    @Autowired
    RestTemplate restTemplate;

    @RequestMapping("testRibbon")
    public String testRibbon(){
         restTemplate.getForObject("http://user/testRibbon",String.class);
         return  "bb";
    }
}
