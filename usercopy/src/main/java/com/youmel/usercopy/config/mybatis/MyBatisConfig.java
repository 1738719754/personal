package com.youmel.usercopy.config.mybatis;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.bind.RelaxedPropertyResolver;
import org.springframework.context.EnvironmentAware;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.PlatformTransactionManager;

import javax.sql.DataSource;


/**
 * SqlSessionFactory TransactionManager
 */
@Configuration
@SuppressWarnings("SpringJavaAutowiringInspection")
public class MyBatisConfig implements EnvironmentAware {
    @Autowired
    DataSource dataSource;
    @Autowired
    private Environment env;
    private RelaxedPropertyResolver propertyResolver;

    public MyBatisConfig() {
    }
    @Bean(
            name = {"sqlSessionFactory"}
    )
    public SqlSessionFactory sqlSessionFactoryBean() throws Exception {
        SqlSessionFactoryBean bean = new SqlSessionFactoryBean();
        bean.setDataSource(this.dataSource);
        if(this.propertyResolver.getProperty("type-aliases-package") == null) {
            throw new Exception("type-aliases-package must be config");
        } else {
            bean.setTypeAliasesPackage(this.propertyResolver.getProperty("type-aliases-package"));
            if(this.propertyResolver.getProperty("page-dialect") == null) {
                throw new Exception("mybatis.page-dialect must be config");
            } else {
                PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();

                try {
                    if(this.propertyResolver.getProperty("mapper-locations") == null) {
                        throw new Exception("mybatis.mapper-locations must be config");
                    } else {
                        bean.setMapperLocations(resolver.getResources(this.propertyResolver.getProperty("mapper-locations")));
                        return bean.getObject();
                    }
                } catch (Exception var6) {
                    var6.printStackTrace();
                    throw new RuntimeException(var6);
                }
            }
        }
    }

    @Bean
    public SqlSessionTemplate sqlSessionTemplate(SqlSessionFactory sqlSessionFactory) {
        return new SqlSessionTemplate(sqlSessionFactory);
    }
    //事务
    @Bean
    public PlatformTransactionManager annotationDrivenTransactionManager() {
        return new DataSourceTransactionManager(this.dataSource);
    }

    public void setEnvironment(Environment environment) {
        this.propertyResolver = new RelaxedPropertyResolver(this.env, "mybatis.");
    }
}
