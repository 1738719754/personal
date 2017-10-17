package com.youmel.article.service;

/**
 * Created by CDDF on 2017/10/17.
 */
public interface RedisCacheService {
    public String get(Long id);
    public String put(Long id,String value);
    public void del(Long id);
}
