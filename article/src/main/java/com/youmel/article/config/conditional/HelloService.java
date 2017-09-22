package com.youmel.article.config.conditional;

/**
 * Created by CDDF on 2017/9/22.
 */
public class HelloService {
    private String msg;

    public String sayHello(){
        return "Hello " + msg;
    }
    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
