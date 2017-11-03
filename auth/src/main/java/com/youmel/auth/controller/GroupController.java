package com.youmel.auth.controller;

import com.youmel.auth.common.constant.StaticValue;
import com.youmel.auth.common.util.MessageRsp;
import com.youmel.auth.pojo.BaseGroup;
import com.youmel.auth.pojo.BaseGroupMember;
import com.youmel.auth.service.GroupService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;

/**
 * Created by CDDF on 2017/10/31.
 */
@RestController
@RequestMapping("group")
@Api(description = "角色管理")
public class GroupController {

    @Autowired
    private GroupService groupService;

    /**
     * 按名称、角色类型查询所有角色信息
     * 可查询所有，也可按条件查询
     */
    @RequestMapping(value = "/list",method = RequestMethod.GET)
    @ApiOperation(value = "按名称、角色类型查询所有角色信息",notes = "可查询所有，也可按条件查询")
    @ApiImplicitParams( value = {
            @ApiImplicitParam(paramType = "query", name = "name", dataType = "string", required = false, value = "角色名称"),
            @ApiImplicitParam(paramType = "query", name = "typeId", dataType = "int", required = false, value = "角色类型类型")
    })
    public MessageRsp selectGroupByNameOrTypeId(@RequestParam(value = "name",required = false)String name, @RequestParam(value = "typeId",required = false) Integer typeId){
        MessageRsp messageRsp = new MessageRsp();
        messageRsp.setErrormsg(StaticValue.MSGERROR);
        messageRsp.setErrorcode(StaticValue.ERROR);
        //条件查询所有角色信息
        HashMap paramter = new HashMap();
        paramter.put("name",name);
        paramter.put("typeId",typeId);
        messageRsp.setData(groupService.selectGroupByNameOrTypeId(paramter));
        messageRsp.setErrormsg(StaticValue.MSGSUCCESS);
        messageRsp.setErrorcode(StaticValue.SUCCESS);
        return messageRsp;
    }

    /**
     * 新增角色
     * 新增：对流程无影响
     */
    @RequestMapping(value = "",method = RequestMethod.POST)
    @ApiOperation(value = "新增角色",notes = "新增：对流程无影响")
    @ApiImplicitParams( value = {
            @ApiImplicitParam(paramType = "query", name = "baseGroup", dataType = "BaseGroup", required = true, value = "角色实体")
    })
    public MessageRsp insertGroup(BaseGroup baseGroup){
        MessageRsp messageRsp = new MessageRsp();
        messageRsp.setErrormsg(StaticValue.MSGERROR);
        messageRsp.setErrorcode(StaticValue.ERROR);
        //参数判断
        if(StringUtils.isBlank(baseGroup.getgName()) || (baseGroup.getTypeId() == null)){
            messageRsp.setErrormsg("parameter err");
            return messageRsp;
        }
        //执行操作
        if(groupService.insertGroup(baseGroup) > 0){
            messageRsp.setErrormsg(StaticValue.MSGSUCCESS);
            messageRsp.setErrorcode(StaticValue.SUCCESS);
        }
        return messageRsp;
    }

    /**
     * 编辑角色
     * 编辑状态：影响角色下所有用户的权限
     * 编辑内容：无影响
     */
    @RequestMapping(value = "/{id}",method = RequestMethod.PUT)
    @ApiOperation(value = "编辑角色",notes = "编辑状态：影响角色下所有用户的权限;编辑内容：无影响")
    @ApiImplicitParams( value = {
            @ApiImplicitParam(paramType = "query", name = "baseGroup", dataType = "BaseGroup", required = true, value = "角色实体"),
            @ApiImplicitParam(paramType = "path", name = "id", dataType = "int", required = true, value = "角色id")
    })
    public MessageRsp updateGroup(BaseGroup baseGroup,@PathVariable("id") Integer id){
        MessageRsp messageRsp = new MessageRsp();
        messageRsp.setErrormsg(StaticValue.MSGERROR);
        messageRsp.setErrorcode(StaticValue.ERROR);
        //参数判断
        if(id == null || StringUtils.isBlank(baseGroup.getgName()) || baseGroup.getTypeId() == null){
            messageRsp.setErrormsg("parameter err");
        }
        //参数拼接
        baseGroup.setId(id);
        //编辑操作
        if(groupService.updateGroup(baseGroup) > 0){
            messageRsp.setErrormsg(StaticValue.MSGSUCCESS);
            messageRsp.setErrorcode(StaticValue.SUCCESS);
        }
        return messageRsp;
    }

    /**
     * 删除角色
     * 删除角色前 查询该角色下是否有成员  有则必须删除所有成员后才能删除角色
     * 删除时：级联删除掉该角色的资源信息
     */
    @RequestMapping(value = "/{id}",method = RequestMethod.DELETE)
    @ApiOperation(value = "删除角色",notes = "删除角色前 查询该角色下是否有成员  有则必须删除所有成员后才能删除角色;删除时：级联删除掉该角色的资源信息")
    @ApiImplicitParams( value = {
            @ApiImplicitParam(paramType = "path", name = "id", dataType = "int", required = true, value = "角色id")
    })
    public MessageRsp deleteGroup(@PathVariable("id")Integer id){
        MessageRsp messageRsp = new MessageRsp();
        messageRsp.setErrormsg(StaticValue.MSGERROR);
        messageRsp.setErrorcode(StaticValue.ERROR);
        //参数判断
        //删除操作 在一个service中

        messageRsp.setErrormsg(StaticValue.MSGSUCCESS);
        messageRsp.setErrorcode(StaticValue.SUCCESS);
        return messageRsp;
    }

    /**
     * 按角色id查询其下所有member信息
     * 用途：用于查看角色下的成员  以及删除角色成员时使用
     */
    @RequestMapping(value = "/{id}/member/list",method = RequestMethod.GET)
    @ApiOperation(value = "按角色id查询其下所有member信息",notes = "用途：用于查看角色下的成员  以及删除角色成员时使用")
    @ApiImplicitParams( value = {
            @ApiImplicitParam(paramType = "path", name = "id", dataType = "int", required = true, value = "角色id")
    })
    public MessageRsp selectMemberByGroupId(@PathVariable("id")Integer groupId){
        MessageRsp messageRsp = new MessageRsp();
        messageRsp.setErrormsg(StaticValue.MSGERROR);
        messageRsp.setErrorcode(StaticValue.ERROR);
        //参数判断
        if(groupId == null){
            messageRsp.setErrormsg("id is null");
            return messageRsp;
        }
        messageRsp.setData(groupService.selectMemberByGroupId(groupId));
        messageRsp.setErrormsg(StaticValue.MSGSUCCESS);
        messageRsp.setErrorcode(StaticValue.SUCCESS);
        return messageRsp;
    }

    /**
     * 按用户id查询角色信息
     * 提供给用户界面的接口
     */
    @RequestMapping(value = "/member/user/{id}",method = RequestMethod.GET)
    @ApiOperation(value = "按用户id查询角色信息",notes = "提供给用户界面的接口")
    @ApiImplicitParams( value = {
            @ApiImplicitParam(paramType = "path", name = "id", dataType = "int", required = true, value = "用户id")
    })
    public MessageRsp selectGroupByUserId(@PathVariable("id")Integer id){
        MessageRsp messageRsp = new MessageRsp();
        messageRsp.setErrormsg(StaticValue.MSGERROR);
        messageRsp.setErrorcode(StaticValue.ERROR);
        //参数判断
        if(id == null){
            messageRsp.setErrormsg("id is null");
        }
        //查询
        messageRsp.setData(groupService.selectGroupByUserId(id));
        messageRsp.setErrormsg(StaticValue.MSGSUCCESS);
        messageRsp.setErrorcode(StaticValue.SUCCESS);
        return messageRsp;
    }
    /**
     * 新增角色成员信息
     */
    @RequestMapping(value = "/member",method = RequestMethod.POST)
    @ApiOperation(value = "新增角色成员信息",notes = "新增角色成员信息")
    @ApiImplicitParams( value = {
            @ApiImplicitParam(paramType = "query", name = "baseGroupMember", dataType = "BaseGroupMember", required = true, value = "角色成员实体")
    })
    public MessageRsp insertMember(BaseGroupMember baseGroupMember){
        MessageRsp messageRsp = new MessageRsp();
        messageRsp.setErrormsg(StaticValue.MSGERROR);
        messageRsp.setErrorcode(StaticValue.ERROR);
        //参数判断
        if(baseGroupMember.getGroupId() == null || baseGroupMember.getUserId() == null || baseGroupMember.getmType() == null){
            messageRsp.setErrormsg("parameter err");
            return messageRsp;
        }
        //拼接数据
        if(groupService.insertMember(baseGroupMember) > 0){
            messageRsp.setErrormsg(StaticValue.MSGSUCCESS);
            messageRsp.setErrorcode(StaticValue.SUCCESS);
        }
        return messageRsp;
    }
    /**
     * 按id更改角色成员信息
     * 冗余接口 可以修改任何信息
     * 暂定只能更改描述以及type信息 没做后端判断 前端判断就行了
     */
    @RequestMapping(value = "/member/{id}",method = RequestMethod.PUT)
    @ApiOperation(value = "按id更改角色成员信息",notes = "冗余接口 可以修改任何信息；暂定只能更改描述以及type信息 没做后端判断 前端判断就行了")
    @ApiImplicitParams( value = {
            @ApiImplicitParam(paramType = "query", name = "baseGroupMember", dataType = "BaseGroupMember", required = true, value = "角色成员实体"),
            @ApiImplicitParam(paramType = "path", name = "id", dataType = "int", required = true, value = "角色成员id")
    })
    public MessageRsp updateGroupMember(BaseGroupMember baseGroupMember,@PathVariable("id")Integer id){
        MessageRsp messageRsp = new MessageRsp();
        messageRsp.setErrormsg(StaticValue.MSGERROR);
        messageRsp.setErrorcode(StaticValue.ERROR);
        //参数判断
        if(id == null){
            messageRsp.setErrormsg("id is null");
            return messageRsp;
        }
        baseGroupMember.setId(id);
        if(groupService.updateGroupMember(baseGroupMember) > 0){
            messageRsp.setErrormsg(StaticValue.MSGSUCCESS);
            messageRsp.setErrorcode(StaticValue.SUCCESS);
        }
        return messageRsp;
    }
    /**
     * 按id删除角色成员信息
     */
    @RequestMapping(value = "/member/{id}",method = RequestMethod.DELETE)
    @ApiOperation(value = "按id删除角色成员信息",notes = "按id删除角色成员信息")
    @ApiImplicitParams( value = {
            @ApiImplicitParam(paramType = "path", name = "id", dataType = "int", required = true, value = "角色成员id")
    })
    public MessageRsp deleteGroupMemberById(@PathVariable("id")Integer id){
        MessageRsp messageRsp = new MessageRsp();
        messageRsp.setErrormsg(StaticValue.MSGERROR);
        messageRsp.setErrorcode(StaticValue.ERROR);
        //参数判断
        if(id == null){
            messageRsp.setErrormsg("id is null");
            return messageRsp;
        }
        //操作
        if(groupService.deleteGroupMemberById(id) > 0){
            messageRsp.setErrormsg(StaticValue.MSGSUCCESS);
            messageRsp.setErrorcode(StaticValue.SUCCESS);
        }
        return messageRsp;
    }
}
