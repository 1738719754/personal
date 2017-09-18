package user.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by CDDF on 2017/9/8.
 */
@RefreshScope
@RestController
public class TestController {
    @Value("${from}")
    private String from;
    @RequestMapping("test")
    public String test(){
        return from;
    }
}
