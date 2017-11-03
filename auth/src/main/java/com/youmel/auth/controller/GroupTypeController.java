package com.youmel.auth.controller;


import com.youmel.auth.common.constant.StaticValue;
import com.youmel.auth.common.util.EntityUtil;
import com.youmel.auth.common.util.MessageRsp;
import com.youmel.auth.pojo.BaseGroupType;
import com.youmel.auth.service.GroupTypeService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * 角色类型管理
 */
@RestController
@RequestMapping("groupType")
@Api(description = "角色类型管理")
public class GroupTypeController{

    @Autowired
    private GroupTypeService groupTypeService;

    /**
     * 按名称筛选 查询所有角色类型
     * 可全部查询 也可 按条件查询
     */
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    @ApiOperation(value = "按名称筛选 查询所有角色类型",notes = "可全部查询 也可 按条件查询")
    @ApiImplicitParams( value = {
            @ApiImplicitParam(paramType = "query", name = "name", dataType = "string", required = false, value = "角色类型名称")
    })
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
    @ApiOperation(value = "编辑角色类型信息",notes = "删除了状态的字段  无状态改变")
    @ApiImplicitParams( value = {
            @ApiImplicitParam(paramType = "query", name = "baseGroupType", dataType = "BaseGroupType", required = true, value = "角色类型"),
            @ApiImplicitParam(paramType = "path", name = "id", dataType = "int", required = true, value = "角色类型id")
    })
    public MessageRsp put(BaseGroupType baseGroupType, @PathVariable Integer id) {
        MessageRsp messageRsp = new MessageRsp();
        messageRsp.setErrormsg(StaticValue.MSGERROR);
        messageRsp.setErrorcode(StaticValue.ERROR);
        //这里拼装basegroupType
        EntityUtil.setCreatAndUpdatInfo(baseGroupType);
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
    @ApiOperation(value = "新增角色类型",notes = "新增角色类型")
    @ApiImplicitParams( value = {
            @ApiImplicitParam(paramType = "query", name = "baseGroupType", dataType = "BaseGroupType", required = true, value = "角色类型")
    })
    public MessageRsp post(BaseGroupType baseGroupType) {
        MessageRsp messageRsp = new MessageRsp();
        messageRsp.setErrormsg(StaticValue.MSGERROR);
        messageRsp.setErrorcode(StaticValue.ERROR);
        //这里拼装basegroupType
        EntityUtil.setCreatAndUpdatInfo(baseGroupType);
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
