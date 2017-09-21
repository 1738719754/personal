package com.youmel.user.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by CDDF on 2017/9/21.
 */
@Controller
public class TestRibbonController {
    @RequestMapping(value = "/testRibbon",method = RequestMethod.GET)
    public String testRibbon(){
        System.out.println("user1");
        return "user1";
    }
}
