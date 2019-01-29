package com.zz.bms.system.controller;


import com.zz.bms.core.enums.EnumErrorMsg;
import com.zz.bms.core.exceptions.BizException;
import com.zz.bms.system.bo.TsRoleBO;
import  com.zz.bms.system.query.impl.TsRoleQueryWebImpl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 角色 控制层
* @author Administrator
* @date 2018-9-6 23:56:31
 */
@RequestMapping("/system/role")
@Controller
public class TsRoleController extends ZzDefaultController<TsRoleBO, String , TsRoleQueryWebImpl> {



	@Override
	protected void isExist(TsRoleBO tsRoleBO) {

		TsRoleBO ckBO ;
		boolean isExist = false;
		TsRoleBO temp = null ;

		ckBO = new TsRoleBO();
		ckBO.setId( tsRoleBO.getId() );
        ckBO.setRoleCode(tsRoleBO.getRoleCode());
        ckBO.setTenantId(tsRoleBO.getTenantId());
        temp = this.baseService.selectCheck(ckBO);

		if (isEntityExist(temp)) {
			throw new BizException(EnumErrorMsg.business_error.getCode(),"角色编号已使用");
		}

		ckBO = new TsRoleBO();
		ckBO.setId( tsRoleBO.getId() );
        ckBO.setRoleName(tsRoleBO.getRoleName());
        ckBO.setTenantId(tsRoleBO.getTenantId());
        temp = this.baseService.selectCheck(ckBO);
		if (isEntityExist(temp)) {
			throw new BizException(EnumErrorMsg.business_error.getCode(),"角色名称已使用");
		}
	}




}
