package com.youmel.auth.controller;

import com.youmel.auth.dao.JWTDao;
import com.youmel.auth.pojo.User;
import com.youmel.auth.util.MD5Util;
import com.youmel.auth.util.MessageRsp;
import com.youmel.auth.util.jwt.AccessToken;
import com.youmel.auth.util.jwt.Audience;
import com.youmel.auth.util.jwt.JwtHelper;
import com.youmel.auth.util.jwt.LoginPara;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 获取token controller
 */
@RestController
public class JWTController {

    @Autowired
    private JWTDao jsonWwbTokenDao;
    @Autowired
    private Audience audienceEntity;

    @RequestMapping("oauth/token")
    public Object getAccessToken(LoginPara loginPara){
        MessageRsp messageRsp = new MessageRsp();
        if(loginPara.getClientId() == null
                || (loginPara.getClientId().compareTo(audienceEntity.getClientId()) != 0))
        {
            messageRsp.setErrormsg("client error");
            return messageRsp;
        }
        //验证用户名密码
        User user = jsonWwbTokenDao.findByUserName(loginPara.getUserName());
        if (user == null)
        {
            messageRsp.setErrormsg("username error");
            return messageRsp;
        }
        else
        {
            String md5Password = MD5Util.getMD5(loginPara.getPassword());

            if (md5Password.compareTo(user.getPassword()) != 0)
            {
                messageRsp.setErrormsg("password errer");
                return messageRsp;
            }
        }
        String accessToken = JwtHelper.createJWT(loginPara.getUserName(), String.valueOf(user.getName()),
                user.getRole(), audienceEntity.getClientId(), audienceEntity.getName(),
                audienceEntity.getExpiresSecond() * 1000, audienceEntity.getBase64Secret());

        //返回accessToken
        AccessToken accessTokenEntity = new AccessToken();
        accessTokenEntity.setAccess_token(accessToken);
        accessTokenEntity.setExpires_in(audienceEntity.getExpiresSecond());
        accessTokenEntity.setToken_type("bearer");
        messageRsp.setData(accessTokenEntity);
        return messageRsp;
    }
}

