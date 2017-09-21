package com.youmel.article.feign;

import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.*;

/**
 * Created by CDDF on 2017/6/28.
 */
@FeignClient("user")
public interface HelloService {
    @RequestMapping("/hello")
    String hello();

}
