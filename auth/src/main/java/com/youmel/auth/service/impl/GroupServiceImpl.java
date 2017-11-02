package com.youmel.auth.service.impl;

import com.youmel.auth.common.vo.GroupAndMember;
import com.youmel.auth.mapper.BaseGroupCustomerMapper;
import com.youmel.auth.mapper.BaseGroupMapper;
import com.youmel.auth.mapper.BaseGroupMemberCustomerMapper;
import com.youmel.auth.mapper.BaseGroupMemberMapper;
import com.youmel.auth.pojo.BaseGroup;
import com.youmel.auth.pojo.BaseGroupMember;
import com.youmel.auth.service.GroupService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;

/**
 * Created by CDDF on 2017/10/31.
 */
@Service
@Transactional(readOnly = true)
public class GroupServiceImpl implements GroupService {

    @Autowired
    private BaseGroupMapper baseGroupMapper;
    @Autowired
    private BaseGroupCustomerMapper baseGroupCustomerMapper;
    @Autowired
    private BaseGroupMemberMapper baseGroupMemberMapper;
    @Autowired
    private BaseGroupMemberCustomerMapper baseGroupMemberCustomerMapper;

    @Override
    public List<GroupAndMember> selectGroupByUserId(Integer userid) {
        return baseGroupMemberCustomerMapper.selectGroupByUserId(userid);
    }

    @Override
    public List<BaseGroupMember> selectMemberByGroupId(Integer groupId) {
        return baseGroupMemberCustomerMapper.selectMemberByGroupId(groupId);
    }

    @Override
    public List<BaseGroup> selectGroupByNameOrTypeId(HashMap paramter) {
        return baseGroupCustomerMapper.selectGroupByNameOrTypeId(paramter);
    }

    @Override
    @Transactional(readOnly = false,rollbackFor = Exception.class)
    public int insertGroup(BaseGroup baseGroup) {
        return baseGroupMapper.insertSelective(baseGroup);
    }

    @Override
    @Transactional(readOnly = false,rollbackFor = Exception.class)
    public int updateGroup(BaseGroup baseGroup) {
        return baseGroupMapper.updateByPrimaryKeySelective(baseGroup);
    }

    @Override
    @Transactional(readOnly = false,rollbackFor = Exception.class)
    public int insertMember(BaseGroupMember baseGroupMember) {
        return baseGroupMemberMapper.insertSelective(baseGroupMember);
    }

    @Override
    @Transactional(readOnly = false,rollbackFor = Exception.class)
    public int updateGroupMember(BaseGroupMember baseGroupMember) {
        return baseGroupMemberCustomerMapper.updateGroupMember(baseGroupMember);
    }

    @Override
    @Transactional(readOnly = false,rollbackFor = Exception.class)
    public int deleteGroupMemberById(Integer id) {
        return baseGroupMemberMapper.deleteByPrimaryKey(id);
    }
}
