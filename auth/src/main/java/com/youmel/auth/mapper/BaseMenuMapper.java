package com.youmel.auth.mapper;

import com.youmel.auth.pojo.BaseMenu;

public interface BaseMenuMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table base_menu
     *
     * @mbggenerated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table base_menu
     *
     * @mbggenerated
     */
    int insert(BaseMenu record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table base_menu
     *
     * @mbggenerated
     */
    int insertSelective(BaseMenu record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table base_menu
     *
     * @mbggenerated
     */
    BaseMenu selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table base_menu
     *
     * @mbggenerated
     */
    int updateByPrimaryKeySelective(BaseMenu record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table base_menu
     *
     * @mbggenerated
     */
    int updateByPrimaryKey(BaseMenu record);
}