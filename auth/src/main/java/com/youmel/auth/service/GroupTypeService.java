package com.youmel.auth.service;


import com.youmel.auth.pojo.BaseGroupType;

import java.util.List;

/**
 * Created by CDDF on 2017/10/31.
 */
public interface GroupTypeService {

    /**
     * 按条件查询所有角色类型
     */
    public List<BaseGroupType> selectAllByName(String name);

    /**
     * 编辑角色类型信息
     */
    public int updateByPrimaryKeySelective(BaseGroupType baseGroupType);
    /**
     * 新增角色类型信息
     */
    public int insertSelective(BaseGroupType baseGroupType);
}
