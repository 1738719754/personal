package com.youmel.article.config.redis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.condition.ConditionalOnMissingBean;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.data.redis.connection.jedis.JedisConnectionFactory;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import redis.clients.jedis.JedisPoolConfig;

/**
 * Created by CDDF on 2017/5/12.
 */
@Configuration
public class SecondRedisConfig {

    @Autowired
    @Qualifier("secondRedisProperties")
    private SecondRedisProperties properties;

    public SecondRedisConfig(){
    }

    @Bean(name = "secondRedisProperties")
    @ConditionalOnMissingBean
    public SecondRedisProperties secondRedisProperties(){
        return new SecondRedisProperties();
    }

    public RedisConnectionFactory jedisConnectionFactory() {
        JedisPoolConfig poolConfig = new JedisPoolConfig();
        poolConfig.setMaxTotal(this.properties.getPool().getMaxActive());
        poolConfig.setMaxIdle(this.properties.getPool().getMaxIdle());
        poolConfig.setMaxWaitMillis((long)this.properties.getPool().getMaxWait());
        poolConfig.setTestOnBorrow(true);
        poolConfig.setTestOnCreate(true);
        poolConfig.setTestWhileIdle(true);
        JedisConnectionFactory jedisConnectionFactory = new JedisConnectionFactory(poolConfig);
        jedisConnectionFactory.setHostName(this.properties.getHost());
        if(null != this.properties.getPassword()) {
            jedisConnectionFactory.setPassword(this.properties.getPassword());
        }
        jedisConnectionFactory.setPort(this.properties.getPort());
        jedisConnectionFactory.setDatabase(this.properties.getDatabase());
        jedisConnectionFactory.afterPropertiesSet();
        return jedisConnectionFactory;
    }
    @Bean(name = "secondRedisTemplate")
    @ConditionalOnMissingBean(name = {"secondRedisTemplate"})
    public RedisTemplate redisTemplate(){
        StringRedisSerializer stringSerializer = new StringRedisSerializer();
        RedisTemplate redisTemplate = new RedisTemplate();
        redisTemplate.setConnectionFactory(this.jedisConnectionFactory());
        redisTemplate.setKeySerializer(stringSerializer);
        redisTemplate.setValueSerializer(stringSerializer);
        redisTemplate.setHashKeySerializer(stringSerializer);
        redisTemplate.setHashValueSerializer(stringSerializer);
        return redisTemplate;
    }

}
