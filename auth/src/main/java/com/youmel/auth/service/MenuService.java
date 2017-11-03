package com.youmel.auth.service;

import com.youmel.auth.pojo.BaseMenu;

import java.util.List;

/**
 * Created by CDDF on 2017/11/3.
 */
public interface MenuService {

    /**
     * 查询所有menu
     */
    public List<BaseMenu> selectAllMenu();

}
