package com.youmel.auth.common.util;

import com.youmel.auth.common.vo.MenuTree;
import com.youmel.auth.pojo.BaseMenu;

import java.util.ArrayList;
import java.util.List;

/**
 * 帮助basemenu构建menuTree
 */
public class MenuUtil {


    /**
     * 提供第一个menu
     */
    public static MenuTree baseMenuTree(List<MenuTree> baseMenuList){
        MenuTree menuTree = new MenuTree();
        menuTree.setId(-1);
        buildChildren(menuTree,baseMenuList);
        return menuTree;
    }

    /**
     * 递归拼接menu
     */
    private static void buildChildren(MenuTree menuTree,List<MenuTree> baseMenuList){
        //根据id查询
        for(MenuTree baseMenu : baseMenuList){
            if(baseMenu.getParentId() == menuTree.getId()){
                if (menuTree.getChildren() == null){
                    menuTree.setChildren(new ArrayList<>());
                }
                //menu转menuTree
                buildChildren(baseMenu,baseMenuList);
                menuTree.getChildren().add(baseMenu);
            }
        }
    }
}
