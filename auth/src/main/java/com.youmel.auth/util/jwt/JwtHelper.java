package com.youmel.auth.util.jwt;

import io.jsonwebtoken.Claims;
import io.jsonwebtoken.JwtBuilder;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;

import javax.crypto.spec.SecretKeySpec;
import javax.xml.bind.DatatypeConverter;
import java.security.Key;
import java.util.Date;

/**
 * http://blog.csdn.net/sun_t89/article/details/51923017
 * jwt解析生成工具
 */
public class JwtHelper {
    /**
     * 解析jwt
     */
    public static Claims parseJWT(String jsonWebToken, String base64Security){
        try{
            Claims claims = Jwts.parser()
                    .setSigningKey(DatatypeConverter.parseBase64Binary(base64Security))
                    .parseClaimsJws(jsonWebToken).getBody();
            return claims;
        }catch (Exception e){
            return null;
        }
    }

    /**
     * 生成jwt
     */
    public static String createJWT(String name, String userId, String role, String audience,
                                   String issuer, long TTLMillis, String base64Security){
        SignatureAlgorithm signatureAlgorithm = SignatureAlgorithm.HS256;
        long nowMillis = System.currentTimeMillis();
        Date now = new Date(nowMillis);
        //生成签名密钥
        byte[] apiKeySecretBytes = DatatypeConverter.parseBase64Binary(base64Security);
        Key signingKey = new SecretKeySpec(apiKeySecretBytes,signatureAlgorithm.getJcaName());
        //添加构成jwt参数
        JwtBuilder builder = Jwts.builder().setHeaderParam("typ","JWT")
                .claim("role",role)
                .claim("unique_name",name)
                .claim("userid",userId) //该方法是在JWT中加入值为vaule 的 key 自定义字段；
                .setIssuer(issuer)//请求发起者
                .setAudience(audience)
                .signWith(signatureAlgorithm,signingKey);// //两个参数，一个是加密算法，一个秘钥；SECRET_KEY是加密算法对应的密钥，这里使用额是HS256加密算法；
        //添加token过期时间
        if(TTLMillis >= 0){
            long expMillis = nowMillis + TTLMillis;
            Date exp = new Date(expMillis);
            builder.setExpiration(exp).setNotBefore(now);//expTime是过期时间
        }
        //生成jwt
        return builder.compact();

    }
}
