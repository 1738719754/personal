package com.youmel.article.controller;

import com.youmel.article.config.mq.MqConfig;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by CDDF on 2017/10/11.
 */
@Controller
public class RabbitMqController {
    @Autowired
    RabbitTemplate rabbitTemplate;

    @RequestMapping("send")
    @ResponseBody
    public void send(String message){
        rabbitTemplate.convertAndSend(MqConfig.EXCHANGE,MqConfig.ROUTINGKEY,message);
    }

    @RabbitListener(queues = "test-queue")
    public void reveiveMessage(Message message){
        String a = new String(message.getBody());
        System.out.println("Received <" + a + ">");
    }
}
