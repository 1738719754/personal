package com.youmel.auth.util;

import sun.misc.BASE64Encoder;

import java.security.MessageDigest;

/**
 * Created by CDDF on 2017/7/10.
 */
public class MD5Util {
    private static final String SALT = "youmel";

    public static String getMD5(String message){
        String password = message + SALT;
        //创建一个提供信息摘要算法的对象 初始化为MD5算法对象
        try{
            MessageDigest md = MessageDigest.getInstance("MD5");
            BASE64Encoder base64Encoder = new BASE64Encoder();
            String newstr = base64Encoder.encode(md.digest(password.getBytes("utf-8")));
            return newstr;
        }catch (Exception e){
            throw new RuntimeException(e);
        }
    }
    public static void main(String[] args){
        System.out.println(getMD5("123456"));
    }
}
