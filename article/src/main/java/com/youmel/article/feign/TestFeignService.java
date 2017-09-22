package com.youmel.article.feign;

import com.youmel.article.feign.fallback.TestFeignServiceFallback;
import com.youmel.article.pojo.User;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.*;

/**
 * Created by CDDF on 2017/6/28.
 */
@FeignClient(name = "user",fallback = TestFeignServiceFallback.class)
public interface TestFeignService {

    @RequestMapping("/hello")
    String hello();

    @RequestMapping(value = "/hello1",method = RequestMethod.GET)
    String hello(@RequestParam("name") String name);

    @RequestMapping(value = "/hello2",method = RequestMethod.GET)
    User hello(@RequestHeader("name") String name, @RequestHeader("age") Integer age);

    @RequestMapping(value = "/hello3",method = RequestMethod.POST)
    String hello(@RequestBody User user);
}
