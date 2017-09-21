package com.youmel.usercopy.config.mybatis;

import com.alibaba.druid.pool.DruidDataSource;
import org.springframework.boot.bind.RelaxedPropertyResolver;
import org.springframework.context.EnvironmentAware;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import javax.sql.DataSource;
import java.sql.SQLException;

/**
 * DataSource
 */
@Configuration
@EnableTransactionManagement
public class DruidDataSourceConfig implements EnvironmentAware {
    private RelaxedPropertyResolver propertyResolver;

    public DruidDataSourceConfig() {
    }

    public void setEnvironment(Environment env) {
        this.propertyResolver = new RelaxedPropertyResolver(env, "spring.datasource.");
    }

    @Bean
    public DataSource dataSource() {
        System.out.println("install alibaba druid!");
        DruidDataSource dataSource = new DruidDataSource();
        dataSource.setUrl(this.propertyResolver.getProperty("url"));
        dataSource.setDriverClassName(this.propertyResolver.getProperty("driver-class-name"));
        dataSource.setUsername(this.propertyResolver.getProperty("username"));
        dataSource.setPassword(this.propertyResolver.getProperty("password"));
        dataSource.setInitialSize(Integer.valueOf(this.propertyResolver.getProperty("initial-size")).intValue());
        dataSource.setMinIdle(Integer.valueOf(this.propertyResolver.getProperty("min-idle")).intValue());
        dataSource.setMaxWait(Long.valueOf(this.propertyResolver.getProperty("max-wait")).longValue());
        dataSource.setMaxActive(Integer.valueOf(this.propertyResolver.getProperty("max-active")).intValue());
        dataSource.setMinEvictableIdleTimeMillis(Long.valueOf(this.propertyResolver.getProperty("min-evictable-idle-time-millis")).longValue());

        try {
            dataSource.setFilters("stat,wall");
        } catch (SQLException var3) {
            var3.printStackTrace();
        }

        return dataSource;
    }
}
