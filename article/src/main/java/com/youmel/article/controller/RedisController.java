package com.youmel.article.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by CDDF on 2017/10/17.
 */
@Controller
public class RedisController {
    @Autowired
    StringRedisTemplate stringRedisTemplate;

    @RequestMapping("/save")
    @ResponseBody
    public String save(@RequestParam("key")String key,@RequestParam("value")String value){
        ValueOperations<String,String> valueOperations = stringRedisTemplate.opsForValue();
        valueOperations.set(key,value);
        return valueOperations.get(key);
    }
}
