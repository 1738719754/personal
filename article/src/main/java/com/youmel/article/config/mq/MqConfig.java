package com.youmel.article.config.mq;

import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.DirectExchange;
import org.springframework.amqp.core.Queue;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Created by CDDF on 2017/10/11.
 */
@Configuration
public class MqConfig {

    public static final String EXCHANGE = "test-exchange";
    public static final String QUEUE = "test-queue";
    public static final String ROUTINGKEY = "test";

    @Bean
    public DirectExchange directExchangeTest(){
        return new DirectExchange(EXCHANGE);
    }

    @Bean
    public Queue queueTest(){
        return new Queue(QUEUE, true);
    }
    @Bean
    public Queue queueMy(){
        return new Queue("myQueue", false);
    }

    @Bean
    public Binding bindingTest() {
        return BindingBuilder.bind(queueTest()).to(directExchangeTest()).with(ROUTINGKEY);
    }
}
