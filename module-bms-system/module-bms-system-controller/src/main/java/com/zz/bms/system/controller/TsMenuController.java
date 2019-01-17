package com.zz.bms.system.controller;

import com.zz.bms.controller.base.controller.ZzDefaultController;


import com.zz.bms.core.db.entity.BaseEntity;
import com.zz.bms.core.exceptions.DbException;
import com.zz.bms.system.bo.TsMenuBO;
import  com.zz.bms.system.query.impl.TsMenuQueryWebImpl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 菜单 控制层
* @author Administrator
* @date 2018-9-6 23:56:30
 */
@RequestMapping("/system/menu")
@Controller
public class TsMenuController extends ZzDefaultController<TsMenuBO, String , TsMenuQueryWebImpl> {



	@Override
	protected void isExist(TsMenuBO tsMenuBO) {

		TsMenuBO ckBO ;
		BaseEntity temp = null ;

		ckBO = new TsMenuBO();
		ckBO.setId( tsMenuBO.getId() );
        ckBO.setMenuCode(tsMenuBO.getMenuCode());
        temp = this.baseService.selectCheck(ckBO);
		if (isEntityExist(temp)) {
			throw DbException.DB_SAVE_SAME;
		}
	}




}
