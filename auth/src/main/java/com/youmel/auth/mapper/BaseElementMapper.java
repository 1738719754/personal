package com.youmel.auth.mapper;

import com.youmel.auth.pojo.BaseElement;

public interface BaseElementMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table base_element
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table base_element
     *
     * @mbggenerated
     */
    int insert(BaseElement record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table base_element
     *
     * @mbggenerated
     */
    int insertSelective(BaseElement record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table base_element
     *
     * @mbggenerated
     */
    BaseElement selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table base_element
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(BaseElement record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table base_element
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(BaseElement record);
}