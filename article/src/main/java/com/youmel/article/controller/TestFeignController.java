package com.youmel.article.controller;

import com.youmel.article.feign.TestFeignService;
import com.youmel.article.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by CDDF on 2017/9/21.
 */
@Controller
public class TestFeignController {
    @Autowired
    TestFeignService testFeignService;

    @RequestMapping(value = "/feign-consumer",method = RequestMethod.GET)
    @ResponseBody
    public String helloConsumer(){
        return testFeignService.hello();
    }

    @RequestMapping(value = "/feign-consumer1",method = RequestMethod.GET)
    @ResponseBody
    public String helloConsumer1(){
        StringBuffer sb = new StringBuffer();
        sb.append("hello1: " + testFeignService.hello("youmel")).append("\n");
        sb.append("hello2: " + testFeignService.hello("youmel",24)).append("\n");
        sb.append("hello3: " + testFeignService.hello(new User("youmel",24))).append("\n");
        return sb.toString();
    }
}
