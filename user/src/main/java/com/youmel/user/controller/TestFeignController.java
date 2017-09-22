package com.youmel.user.controller;

import com.youmel.user.pojo.User;
import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cloud.client.ServiceInstance;
import org.springframework.cloud.client.discovery.DiscoveryClient;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by CDDF on 2017/9/21.
 */
@Controller
public class TestFeignController {

    @RequestMapping(value = "hello",method = RequestMethod.GET)
    @ResponseBody
    public String index(HttpServletRequest request) throws Exception{
        System.out.println("超时重试");
        Thread.sleep(2500);
        return "user1";
    }

    @RequestMapping(value = "hello1",method = RequestMethod.GET)
    @ResponseBody
    public String hello(@RequestParam String name){
        return "hello" + name;
    }

    @RequestMapping(value = "hello2",method = RequestMethod.GET)
    @ResponseBody
    public User hello(@RequestHeader String name,@RequestHeader Integer age){
        return new User(name,age);
    }

    @RequestMapping(value = "hello3",method = RequestMethod.POST)
    @ResponseBody
    public String hello(@RequestBody User user){
        return "hello" + user.getName() + "," + user.getAge();
    }
}
