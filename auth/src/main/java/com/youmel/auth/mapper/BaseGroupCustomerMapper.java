package com.youmel.auth.mapper;


import com.youmel.auth.pojo.BaseGroup;

import java.util.HashMap;
import java.util.List;

/**
 * Created by CDDF on 2017/11/1.
 */
public interface BaseGroupCustomerMapper {
    public List<BaseGroup> selectGroupByNameOrTypeId(HashMap paramter);
    public int updateGroupStatus(HashMap parameter);
}
