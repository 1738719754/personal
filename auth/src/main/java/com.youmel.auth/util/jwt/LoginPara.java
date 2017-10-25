package com.youmel.auth.util.jwt;

/**
 * Created by CDDF on 2017/10/25.
 */
public class LoginPara {
    private String clientId;
    private String userName;
    private String password;
    private String caotchaCode;
    private String captchaValue;

    public String getClientId() {
        return clientId;
    }

    public void setClientId(String clientId) {
        this.clientId = clientId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCaotchaCode() {
        return caotchaCode;
    }

    public void setCaotchaCode(String caotchaCode) {
        this.caotchaCode = caotchaCode;
    }

    public String getCaptchaValue() {
        return captchaValue;
    }

    public void setCaptchaValue(String captchaValue) {
        this.captchaValue = captchaValue;
    }
}
