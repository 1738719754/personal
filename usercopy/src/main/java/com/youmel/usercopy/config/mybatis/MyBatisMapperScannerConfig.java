package com.youmel.usercopy.config.mybatis;

import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.boot.bind.RelaxedPropertyResolver;
import org.springframework.context.EnvironmentAware;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;

/**
 * 定义xml扫描位置
 */
@Configuration
@AutoConfigureAfter({MyBatisConfig.class})
public class MyBatisMapperScannerConfig implements EnvironmentAware {
    private RelaxedPropertyResolver propertyResolver;

    public MyBatisMapperScannerConfig() {
    }

    @Bean
    public MapperScannerConfigurer mapperScannerConfigurer() throws Exception {
        MapperScannerConfigurer mapperScannerConfigurer = new MapperScannerConfigurer();
        mapperScannerConfigurer.setSqlSessionFactoryBeanName("sqlSessionFactory");
        if(this.propertyResolver.getProperty("scanner-path") == null) {
            throw new Exception("scanner-path must be config");
        } else {
            mapperScannerConfigurer.setBasePackage(this.propertyResolver.getProperty("scanner-path"));
            return mapperScannerConfigurer;
        }
    }

    public void setEnvironment(Environment env) {
        this.propertyResolver = new RelaxedPropertyResolver(env, "mybatis.");
    }
}
