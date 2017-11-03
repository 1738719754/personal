package com.youmel.auth.controller;

import com.youmel.auth.common.constant.StaticValue;
import com.youmel.auth.common.util.MenuUtil;
import com.youmel.auth.common.util.MessageRsp;
import com.youmel.auth.common.vo.MenuTree;
import com.youmel.auth.pojo.BaseMenu;
import com.youmel.auth.service.MenuService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by CDDF on 2017/11/3.
 */
@RestController
@Api(description = "菜单管理")
@RequestMapping("menu")
public class MenuController {

    @Autowired
    private MenuService menuService;

    /**
     * 查询所有菜单
     */
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    @ApiOperation(value = "查询所有菜单",notes = "查询所有菜单树形结构")
    @ApiImplicitParams( value = {
    })
    public MessageRsp selectAllMenu(){
        MessageRsp messageRsp = new MessageRsp();
        messageRsp.setErrormsg(StaticValue.MSGERROR);
        messageRsp.setErrorcode(StaticValue.ERROR);
        //查询所有menu
        List<BaseMenu> baseMenuList = menuService.selectAllMenu();
        //组装menu为树形数据
        List<MenuTree> menuTrees = new ArrayList<>();
        MenuTree menuTree = null;
        for(BaseMenu baseMenu : baseMenuList){
            menuTree = new MenuTree();
            BeanUtils.copyProperties(baseMenu,menuTree);
            menuTrees.add(menuTree);
        }
        messageRsp.setData(MenuUtil.baseMenuTree(menuTrees));
        messageRsp.setErrormsg(StaticValue.MSGSUCCESS);
        messageRsp.setErrorcode(StaticValue.SUCCESS);
        return messageRsp;
    }

    /**
     * 根据用户id查询其菜单
     */
    /**
     * 新增菜单
     */
    /**
     * 删除菜单
     */
    /**
     * 编辑菜单
     */
}
