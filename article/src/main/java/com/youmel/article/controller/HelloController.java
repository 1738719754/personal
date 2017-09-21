package com.youmel.article.controller;

import com.youmel.article.feign.HelloService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by CDDF on 2017/9/21.
 */
@Controller
public class HelloController {
    @Autowired
    HelloService helloService;
    @RequestMapping(value = "/feign-consumer",method = RequestMethod.GET)
    @ResponseBody
    public String helloConsumer(){
        return helloService.hello();
    }
}
