package com.youmel.auth.service.impl;


import com.youmel.auth.mapper.BaseGroupTypeCustomerMapper;
import com.youmel.auth.mapper.BaseGroupTypeMapper;
import com.youmel.auth.pojo.BaseGroupType;
import com.youmel.auth.service.GroupTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by CDDF on 2017/10/31.
 */
@Service
@Transactional(readOnly = true)
public class GroupTypeServiceImpl implements GroupTypeService {

    @Autowired
    private BaseGroupTypeMapper baseGroupTypeMapper;
    @Autowired
    private BaseGroupTypeCustomerMapper baseGroupTypeCustomerMapper;

    @Override
    public List<BaseGroupType> selectAllByName(String name) {
        return baseGroupTypeCustomerMapper.selectAllByName(name);
    }

    @Override
    @Transactional(readOnly = false,rollbackFor = Exception.class)
    public int updateByPrimaryKeySelective(BaseGroupType baseGroupType) {
        return baseGroupTypeMapper.updateByPrimaryKeySelective(baseGroupType);
    }

    @Override
    @Transactional(readOnly = false,rollbackFor = Exception.class)
    public int insertSelective(BaseGroupType baseGroupType) {
        return baseGroupTypeMapper.insertSelective(baseGroupType);
    }
}

