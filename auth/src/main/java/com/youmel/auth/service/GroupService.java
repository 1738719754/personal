package com.youmel.auth.service;


import com.youmel.auth.common.vo.GroupAndMember;
import com.youmel.auth.pojo.BaseGroup;
import com.youmel.auth.pojo.BaseGroupMember;

import java.util.HashMap;
import java.util.List;

/**
 * Created by CDDF on 2017/10/31.
 */
public interface GroupService {
    /**
     * 按用户id查询角色信息
     */
    public List<GroupAndMember> selectGroupByUserId(Integer userid);
    /**
     * 按角色id查询其下所有member信息
     */
    public List<BaseGroupMember> selectMemberByGroupId(Integer groupId);
    /**
     * 按名称、角色类型查询所有角色信息
     */
    public List<BaseGroup> selectGroupByNameOrTypeId(HashMap paramter);
    /**
     * 新增角色
     */
    public int insertGroup(BaseGroup baseGroup);
    /**
     * 编辑角色
     */
    public int updateGroup(BaseGroup baseGroup);
    /**
     * 新增角色成员
     */
    public int insertMember(BaseGroupMember baseGroupMember);

    /**
     * 更改角色成员信息
     */
    public int updateGroupMember(BaseGroupMember baseGroupMember);

    /**
     * 根据id删除角色成员信息
     */
    public int deleteGroupMemberById(Integer id);
}
