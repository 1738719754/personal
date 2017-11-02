package com.youmel.auth.controller;


import com.youmel.auth.common.constant.StaticValue;
import com.youmel.auth.common.util.EntityUtils;
import com.youmel.auth.common.util.MessageRsp;
import com.youmel.auth.pojo.BaseGroupType;
import com.youmel.auth.service.GroupTypeService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * 角色类型管理
 */
@RestController
@RequestMapping("groupType")
public class GroupTypeController{

    @Autowired
    private GroupTypeService groupTypeService;

    /**
     * 按名称筛选 查询所有角色类型
     * 可全部查询 也可 按条件查询
     */
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    public MessageRsp all(@RequestParam(value = "name",required = false) String name) {
        MessageRsp messageRsp = new MessageRsp();
        messageRsp.setErrormsg(StaticValue.MSGERROR);
        messageRsp.setErrorcode(StaticValue.ERROR);
        messageRsp.setData(groupTypeService.selectAllByName(name));
        messageRsp.setErrormsg(StaticValue.MSGSUCCESS);
        messageRsp.setErrorcode(StaticValue.SUCCESS);
        return messageRsp;
    }

    /**
     * 编辑角色类型信息
     * 删除状态的字段  无状态改变
     */
    @RequestMapping(value = "/{id}",method = RequestMethod.PUT)
    public MessageRsp put(BaseGroupType baseGroupType, @PathVariable Integer id) {
        MessageRsp messageRsp = new MessageRsp();
        messageRsp.setErrormsg(StaticValue.MSGERROR);
        messageRsp.setErrorcode(StaticValue.ERROR);
        //这里拼装basegroupType
        EntityUtils.setCreatAndUpdatInfo(baseGroupType);
        //判断参数
        if(id == null){
            messageRsp.setErrormsg("id is null");
            return messageRsp;
        }
        baseGroupType.setId(id);
        if(groupTypeService.updateByPrimaryKeySelective(baseGroupType) > 0 ){
            messageRsp.setErrormsg(StaticValue.MSGSUCCESS);
            messageRsp.setErrorcode(StaticValue.SUCCESS);
        }
        return messageRsp;
    }

    /**
     * 新增角色类型
     */
    @RequestMapping(value = "",method = RequestMethod.POST)
    public MessageRsp post(BaseGroupType baseGroupType) {
        MessageRsp messageRsp = new MessageRsp();
        messageRsp.setErrormsg(StaticValue.MSGERROR);
        messageRsp.setErrorcode(StaticValue.ERROR);
        //这里拼装basegroupType
        EntityUtils.setCreatAndUpdatInfo(baseGroupType);
        //判断参数
        if(StringUtils.isBlank(baseGroupType.gettName())){
            messageRsp.setErrormsg("tName is null ");
            return messageRsp;
        }
        if(groupTypeService.insertSelective(baseGroupType) > 0 ){
            messageRsp.setErrormsg(StaticValue.MSGSUCCESS);
            messageRsp.setErrorcode(StaticValue.SUCCESS);
        }
        return messageRsp;
    }

    /**
     * 删除角色类型
     * 删除前  判断其下有角色时无法删除  无角色才能删除
     */
    @RequestMapping(value = "/{id}",method = RequestMethod.DELETE)
    public MessageRsp deleteType(@PathVariable("id")Integer id){
        return null;
    }

}
