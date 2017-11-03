package com.youmel.auth.service.impl;

import com.youmel.auth.mapper.BaseMenuCustomerMapper;
import com.youmel.auth.mapper.BaseMenuMapper;
import com.youmel.auth.pojo.BaseMenu;
import com.youmel.auth.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by CDDF on 2017/11/3.
 */
@Service
@Transactional(readOnly = true)
public class MenuServiceImpl implements MenuService{

    @Autowired
    private BaseMenuMapper baseMenuMapper;
    @Autowired
    private BaseMenuCustomerMapper baseMenuCustomerMapper;

    @Override
    public List<BaseMenu> selectAllMenu() {
        return baseMenuCustomerMapper.selectAllMenu();
    }

}
