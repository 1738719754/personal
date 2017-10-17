package com.youmel.article.config.mq;

import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.DirectExchange;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
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

    public static final String EXCHANGETWO = "test-exchange-two";
    public static final String QUEUETWO = "test-queue-two";
    public static final String ROUTINGKEYTWO = "test-two";

    @Bean
    public DirectExchange directExchangeTest(){
        return new DirectExchange(EXCHANGE);
    }

    @Bean
    public Queue queueTest(){
        return new Queue(QUEUE, true);
    }

    @Bean
    public Binding bindingTest() {
        return BindingBuilder.bind(queueTest()).to(directExchangeTest()).with(ROUTINGKEY);
    }

    @Bean
    public DirectExchange directExchangeTestTwo(){
        return new DirectExchange(EXCHANGETWO);
    }

    @Bean
    public Queue queueTestTwo(){
        return new Queue(QUEUETWO, true);
    }

    @Bean
    public Binding bindingTestTwo() {
        return BindingBuilder.bind(queueTestTwo()).to(directExchangeTestTwo()).with(ROUTINGKEYTWO);
    }
}
