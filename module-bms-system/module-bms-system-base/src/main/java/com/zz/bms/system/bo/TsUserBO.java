package com.zz.bms.system.bo;

import com.zz.bms.core.db.entity.ILoginUserEntity;
import com.zz.bms.enums.EnumYesNo;
import com.zz.bms.system.domain.TsUserEntity;

import com.baomidou.mybatisplus.annotation.TableField;



import com.zz.bms.core.db.entity.IBoEntity;
import com.zz.bms.util.configs.annotaions.*;
import com.zz.bms.constants.DefaultTypeConstant;
import com.zz.bms.constants.DictTypeConstant;
import com.zz.bms.constants.ExcelTypeConstant;
import com.baomidou.mybatisplus.annotation.TableName;


import java.io.Serializable;
	


/**
* 用户 BO , 扩展 TsUserEntity 对象
* @author Administrator
* @date 2019-4-10 11:08:55
*/
@EntityAnnotation(value="用户" , resource = "system.user"  ,businessName = "user_name"    , haveOrgan =  true , haveTenant = true , businessKey="user_name"   )
@TableName(value="ts_user" , resultMap = "TsUserResultMap")
public class TsUserBO extends TsUserEntity implements Serializable , IBoEntity , ILoginUserEntity<String> {




    @TableField(exist = false)
    @EntityAttrDictAnnotation(group = "userStatus", groupName = "状态" ,  dbColumnName = "dict_name" , dbColumnLength = 50 , isNameField = true , dictType = "user_status")
    @EntityAttrExcelAnnotation(excelProcess= "3")
    @EntityAttrPageAnnotation(title = "状态",sort = 601                      ,required=true )
    private String userStatusName ;



    @TableField(exist = false)
    @EntityAttrFkAnnotation(group = "leadUserId",  groupName = "上级领导" ,   dbColumnName = "user_name" , dbColumnType = "VARCHAR" , dbColumnLength = 50   , dbColumnNotNull = true , fkClass=com.zz.bms.system.bo.TsUserBO.class)
    @EntityAttrExcelAnnotation(excelProcess= "3")
    @EntityAttrPageAnnotation(title = "上级领导",sort = 701                      ,required=true )
    private String leadUserName ;



    @TableField(exist = false)
    @EntityAttrDictAnnotation(group = "systemAdmin", groupName = "系统管理人员" ,  dbColumnName = "dict_name" , dbColumnLength = 50 , isNameField = true , dictType = "yes_no")
    @EntityAttrExcelAnnotation(excelProcess= "3")
    @EntityAttrPageAnnotation(title = "系统管理人员",sort = 1301                      ,required=true )
    private String systemAdminName ;

    @TableField(exist = false)
    @EntityAttrFkAnnotation(group = "tenantId",  groupName = "企业" ,   dbColumnName = "tenant_name" , dbColumnType = "VARCHAR" , dbColumnLength = 100   , dbColumnNotNull = true , fkClass=com.zz.bms.system.bo.TsTenantBO.class)
    @EntityAttrExcelAnnotation(excelProcess= "3")
    @EntityAttrPageAnnotation(title = "企业",sort = 1401                     ,required=true )
    private String tenantName ;



    @TableField(exist = false)
    @EntityAttrFkAnnotation(group = "organId",  groupName = "机构" ,   dbColumnName = "organ_name" , dbColumnType = "VARCHAR" , dbColumnLength = 100   , dbColumnNotNull = true , fkClass=com.zz.bms.system.bo.TsOrganBO.class)
    @EntityAttrExcelAnnotation(excelProcess= "3")
    @EntityAttrPageAnnotation(title = "机构",sort = 1402                      ,required=true )
    private String organName ;




    @TableField(exist = false)
    @EntityAttrFkAnnotation(group = "depId",  groupName = "部门" ,   dbColumnName = "dep_name" , dbColumnType = "VARCHAR" , dbColumnLength = 100   , dbColumnNotNull = true , fkClass=com.zz.bms.system.bo.TsDepBO.class)
    @EntityAttrExcelAnnotation(excelProcess= "3")
    @EntityAttrPageAnnotation(title = "部门",sort = 1403                    ,required=true )
    private String depName ;




    public void setUserStatusName(String userStatusName){
        this.userStatusName = userStatusName;
    }

    public String getUserStatusName(){
        return this.userStatusName;
    }

    public void setLeadUserName(String leadUserName){
        this.leadUserName = leadUserName;
    }

    public String getLeadUserName(){
        return this.leadUserName;
    }

    public void setSystemAdminName(String systemAdminName){
        this.systemAdminName = systemAdminName;
    }

    public String getSystemAdminName(){
        return this.systemAdminName;
    }

    public void setDepName(String depName){
        this.depName = depName;
    }

    @Override
    public String getDepName(){
        return this.depName;
    }

    @Override
    public String getOrganName() {
        return this.organName;
    }

    @Override
    public String getTenantName() {
        return this.tenantName;
    }
    @Override
    public boolean isSystemAdminUser() {
        return EnumYesNo.YES.getCode().equals(super.getSystemAdmin());
    }


    @Override
    public boolean isCompanyAdminUser() {
        return EnumYesNo.YES.getCode().equals(super.getCompanyAdmin());
    }

    @Override
    public String getLeadId() {
        return super.getLeadUserId();
    }

    @Override
    public String getLeadName() {
        return  this.getLeadUserName();
    }

    public void setOrganName(String organName) {
        this.organName = organName;
    }


    public void setTenantName(String tenantName) {
        this.tenantName = tenantName;
    }

    public boolean isTable() {

        return true;


    }


    @Override
    public String toString() {


            return this.getUserName();
        
    }
}
