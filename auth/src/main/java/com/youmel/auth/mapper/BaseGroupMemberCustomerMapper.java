package com.youmel.auth.mapper;


import com.youmel.auth.common.vo.GroupAndMember;
import com.youmel.auth.pojo.BaseGroupMember;

import java.util.List;

/**
 * Created by CDDF on 2017/11/1.
 */
public interface BaseGroupMemberCustomerMapper {
    public List<GroupAndMember> selectGroupByUserId(Integer id);
    public List<BaseGroupMember> selectMemberByGroupId(Integer groupId);
    public int updateGroupMember(BaseGroupMember baseGroupMember);
}
