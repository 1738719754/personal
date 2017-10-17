package com.youmel.article.controller;

import com.youmel.article.service.RedisCacheService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by CDDF on 2017/10/17.
 */
@Controller
@RequestMapping("/cache")
public class RedisCacheController {
    @Autowired
    RedisCacheService redisCacheService;

    @RequestMapping("/get")
    @ResponseBody
    public String get(Long id){
        return redisCacheService.get(id);
    }
    @RequestMapping("/put")
    @ResponseBody
    public String put(Long id,String value){
        return redisCacheService.put(id,value);
    }
    @RequestMapping("/del")
    public void del(Long id){
        redisCacheService.del(id);
    }
}
