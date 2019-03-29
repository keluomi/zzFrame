package com.zz.bms.system.controller;


import com.zz.bms.core.db.entity.ILoginUserEntity;
import com.zz.bms.core.enums.EnumErrorMsg;
import com.zz.bms.core.exceptions.BizException;
import com.zz.bms.core.ui.TreeModel;
import com.zz.bms.enums.EnumDepStatus;
import com.zz.bms.enums.EnumUserStatus;
import com.zz.bms.system.bo.TsDepBO;
import com.zz.bms.system.bo.VsUserBO;
import  com.zz.bms.system.query.impl.TsDepQueryWebImpl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 部门 控制层
* @author Administrator
* @date 2018-9-6 23:56:31
 */
@RequestMapping("/system/dep")
@Controller
public class TsDepController extends ZzDefaultController<TsDepBO, String , TsDepQueryWebImpl> {



	@Override
	protected void isExist(TsDepBO tsDepBO) {

		TsDepBO ckBO ;
		TsDepBO temp = null ;

		ckBO = new TsDepBO();
		ckBO.setId( tsDepBO.getId() );
        ckBO.setDepCode(tsDepBO.getDepCode());
        ckBO.setOrganId(tsDepBO.getOrganId());
        temp = this.baseService.selectCheck(ckBO);

		if (isEntityExist(temp)) {
			throw new BizException(EnumErrorMsg.business_error.getCode(),"该部门编号已使用");
		}

		ckBO = new TsDepBO();
		ckBO.setId( tsDepBO.getId() );
        ckBO.setDepName(tsDepBO.getDepName());
        ckBO.setOrganId(tsDepBO.getOrganId());
        temp = this.baseService.selectCheck(ckBO);
		if (isEntityExist(temp)) {
			throw new BizException(EnumErrorMsg.business_error.getCode(),"该部门名称已使用");
		}

	}


	@Override
	public void setCustomInfoByInsert(TsDepBO tsDepBO , ILoginUserEntity sessionUser){
		tsDepBO.setDepStatus(EnumDepStatus.normal.getVal());
		tsDepBO.setDepStatusName(EnumDepStatus.normal.getLabel());
		tsDepBO.setOrganId(organId);
	}


	@Override
	protected TreeModel buildTreeModel(){
		return new TreeModel().toTreeModel("pid" , "depName");
	}







}
