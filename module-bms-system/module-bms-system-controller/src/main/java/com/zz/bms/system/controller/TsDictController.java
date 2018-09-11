package com.zz.bms.system.controller;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.zz.bms.controller.base.controller.DefaultController;
import com.zz.bms.core.enums.EnumYesNo;
import com.zz.bms.shiro.utils.ShiroUtils;



import com.zz.bms.system.bo.TsDictBO;
import  com.zz.bms.system.query.impl.TsDictQueryWebImpl;

import com.zz.bms.util.base.java.IdUtils;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 字典信息 控制层
* @author Administrator
* @date 2018-9-6 23:56:30
 */
@RequestMapping("/system/dict")
@Controller
public class TsDictController extends DefaultController<TsDictBO, String , TsDictQueryWebImpl> {



	@Override
	protected boolean isExist(TsDictBO tsDictBO) {

		TsDictBO ckBO ;
		boolean isExist = false;
		TsDictBO temp = null ;

		ckBO = new TsDictBO();
		ckBO.setId( tsDictBO.getId() );
        ckBO.setDictTypeId(tsDictBO.getDictTypeId());
        ckBO.setDictVal(tsDictBO.getDictVal());
        ckBO.setTenantId(tsDictBO.getTenantId());
        temp = this.baseService.selectCheck(ckBO);
        if (isEntityExist(temp)) {return true;}

		return isExist;
	}




}