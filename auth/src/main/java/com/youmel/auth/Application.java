package com.youmel.auth;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.feign.EnableFeignClients;
import org.springframework.context.annotation.Bean;

import java.util.ArrayList;
import java.util.List;

@EnableFeignClients
@EnableDiscoveryClient
@SpringBootApplication
@MapperScan("com.youmel.auth.mapper")
public class Application {
    /*@Bean
    public FilterRegistrationBean jwtFilterRegistrationBean(){
        FilterRegistrationBean registrationBean = new FilterRegistrationBean();
        HTTPBearerAuthorizeAttribute httpBearerFilter = new HTTPBearerAuthorizeAttribute();
        registrationBean.setFilter(httpBearerFilter);
        List<String> urlPatterns = new ArrayList<String>();
        urlPatterns.add("*//*");
        registrationBean.setUrlPatterns(urlPatterns);
        return registrationBean;
    }*/
    public static void main(String[] args){
        SpringApplication.run(Application.class,args);
    }
}
