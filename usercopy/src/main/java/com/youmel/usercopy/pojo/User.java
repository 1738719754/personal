package com.youmel.usercopy.pojo;

/**
 * Created by CDDF on 2017/9/22.
 */
public class User {
    private String name;
    private Integer age;

    public User() {
    }


    public Integer getAge() {
        return age;
    }

    public User(String name, Integer age) {
        this.name = name;
        this.age = age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getName() {
        return name;

    }

    public void setName(String name) {
        this.name = name;
    }


}
