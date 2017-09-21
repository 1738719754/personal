package com.youmel.usercopy.controller;

import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by CDDF on 2017/9/21.
 */
@Controller
public class TestFeignController {
    @RequestMapping(value = "hello",method = RequestMethod.GET)
    @ResponseBody
    public String index(HttpServletRequest request){
        return "user2";
    }
}
