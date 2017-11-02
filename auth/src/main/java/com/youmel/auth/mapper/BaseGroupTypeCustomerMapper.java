package com.youmel.auth.mapper;


import com.youmel.auth.pojo.BaseGroupType;

import java.util.List;

/**
 * Created by CDDF on 2017/10/31.
 */
public interface BaseGroupTypeCustomerMapper {
    public List<BaseGroupType> selectAllByName(String name);
}
