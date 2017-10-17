package com.youmel.article.controller;

import com.rabbitmq.client.AMQP;
import com.rabbitmq.client.Channel;
import com.youmel.article.config.mq.MqConfig;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.amqp.rabbit.support.CorrelationData;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.support.MessageBuilder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by CDDF on 2017/10/11.
 */
@Controller
@RequestMapping("/mq")
public class RabbitMqController {
    @Autowired
    RabbitTemplate rabbitTemplate;

    @RequestMapping("/set")
    @ResponseBody
    public void set(){
        rabbitTemplate.setConfirmCallback(new RabbitTemplate.ConfirmCallback() {
            @Override
            public void confirm(CorrelationData correlationData, boolean b, String s) {
                if(b){
                    System.out.println("ack" + "correlationData:" + correlationData + "s:" + s);
                }else {
                    System.out.println("nack");
                }
            }
        });
        rabbitTemplate.setReturnCallback(new RabbitTemplate.ReturnCallback() {
            @Override
            public void returnedMessage(Message message, int replyCode, String replyText, String exchange, String routingKey) {
                System.out.println("text: " + replyText + " code: " + replyCode + " exchange: " + exchange + " routingKey :" + routingKey);
            }
        });
    }
    @RequestMapping("/send")
    @ResponseBody
    public void send(String message){
        rabbitTemplate.convertAndSend(MqConfig.EXCHANGE,MqConfig.ROUTINGKEY,message);
    }

    @RabbitListener(queues = "test-queue")
    @SendTo("test-exchange-two/test-two")
    public org.springframework.messaging.Message<String> reveiveMessage(Message message, Channel channel) throws Exception{
        String a = new String(message.getBody());
        System.out.println("Received <" + a + ">");
        //deliveryTag:该消息的index
        //multiple：是否批量.true:将一次性ack所有小于deliveryTag的消息。
        channel.basicAck(message.getMessageProperties().getDeliveryTag(), false);
        //deliveryTag:该消息的index
        //multiple：是否批量.true:将一次性拒绝所有小于deliveryTag的消息。
        //requeue：被拒绝的是否重新入队列
        //channel.basicNack(message.getMessageProperties().getDeliveryTag(),false,true);
       // return "aaa";
        String data = "bbbb";
        return org.springframework.messaging.support.MessageBuilder.withPayload(data).build();
    }

    @RabbitListener(queues = "test-queue-two")
    public void reveiveMessageTwo(Message message, Channel channel) throws Exception{
        String a = new String(message.getBody());
        System.out.println("Received <" + a + ">");
        channel.basicAck(message.getMessageProperties().getDeliveryTag(), false);
    }
}
