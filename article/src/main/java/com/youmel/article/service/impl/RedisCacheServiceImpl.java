package com.youmel.article.service.impl;

import com.youmel.article.service.RedisCacheService;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.CachePut;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Component;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by CDDF on 2017/10/17.
 */
@Component
public class RedisCacheServiceImpl implements RedisCacheService{
    @Override
    @Cacheable(value = "redisCache" , key = "#id")
    public String get(Long id) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String data = sdf.format(new Date());
        System.out.println(data);
        return data;
    }

    @Override
    @CachePut(value = "redisCache" , key = "#id")
    public String put(Long id, String value) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String data = sdf.format(new Date());
        System.out.println(data);
        return data;
    }

    @Override
    @CacheEvict(value = "redisCache" , key = "#id")
    public void del(Long id) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String data = sdf.format(new Date());
        System.out.println(data);
    }
}
