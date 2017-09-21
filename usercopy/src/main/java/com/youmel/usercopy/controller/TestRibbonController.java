package com.youmel.usercopy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by CDDF on 2017/9/21.
 */
@Controller
public class TestRibbonController {
    @RequestMapping("/testRibbon")
    public String testRibbon() throws Exception{
        System.out.println("user2");
        return "user2";
    }
}
