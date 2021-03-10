package com.zz.bms.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.zz.bms.core.db.base.dao.BaseDAO;
import com.zz.bms.core.db.entity.EntityUtil;
import com.zz.bms.system.bo.TsPermitBO;
import com.zz.bms.system.bo.TsRoleBO;
import com.zz.bms.system.bo.TsRolePermitBO;
import com.zz.bms.system.bo.TsUserRoleBO;
import com.zz.bms.system.dao.TsPermitDAO;
import com.zz.bms.system.dao.TsRoleDAO;
import com.zz.bms.system.dao.TsRolePermitDAO;
import com.zz.bms.system.dao.TsUserRoleDAO;
import com.zz.bms.system.service.TsDictService;
import com.zz.bms.system.service.TsRolePermitService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 角色许可关联 ServiceImpl
 * @author Administrator
 * @date 2019-4-10 18:45:41
 */
@Service
public class TsRolePermitServiceImpl extends SystemBaseServiceImpl<TsRolePermitBO,String> implements TsRolePermitService {



	@Autowired
	private TsDictService tsDictService;



	@Autowired
	private TsRoleDAO tsRoleDAO;
	@Autowired
	private TsPermitDAO tsPermitDAO;


	@Autowired
	private TsRolePermitDAO tsRolePermitDAO ;


	@Autowired
	private TsUserRoleDAO tsUserRoleDAO;

	@Override
	public BaseDAO getDAO() {
		return tsRolePermitDAO ;
	}



	@Override
	public TsRolePermitBO processResult(TsRolePermitBO tsRolePermitBO) {


		if(StringUtils.isNotEmpty( tsRolePermitBO.getPermitId())){
			TsPermitBO temp = tsPermitDAO.selectById( tsRolePermitBO.getPermitId() );
			if(temp != null){
				tsRolePermitBO.setPermitName(temp.getPermitName());
			}
		}

		if(StringUtils.isNotEmpty( tsRolePermitBO.getRoleId())){
			TsRoleBO temp = tsRoleDAO.selectById( tsRolePermitBO.getRoleId() );
			if(temp != null){
				tsRolePermitBO.setRoleName(temp.getRoleName());
			}
		}

		return tsRolePermitBO;

	}





	@Override
	public List<TsRolePermitBO> processResult(List<TsRolePermitBO> tsRolePermitBOs) {
		if(tsRolePermitBOs == null || tsRolePermitBOs.isEmpty()){
			return tsRolePermitBOs;
		}

		List<String> permitIdList = new ArrayList<String>();
		List<String> roleIdList = new ArrayList<String>();

		for(TsRolePermitBO bo : tsRolePermitBOs)		{

			if(StringUtils.isNotEmpty( bo.getPermitId())){
				permitIdList.add(bo.getPermitId());
			}
			if(StringUtils.isNotEmpty( bo.getRoleId())){
				roleIdList.add(bo.getRoleId());
			}
		}


		if(!permitIdList.isEmpty()){
			List<TsPermitBO> list =  tsPermitDAO.selectBatchIds(permitIdList);
			Map<String,TsPermitBO> map = EntityUtil.list2Map(list);

			tsRolePermitBOs.forEach(tsRolePermitBO -> {
				if(StringUtils.isNotEmpty( tsRolePermitBO.getPermitId())){
					TsPermitBO temp = map.get( tsRolePermitBO.getPermitId() );
					if(temp != null){
						tsRolePermitBO.setPermitName(temp.getPermitName());
					}
				}
			});
		}

		if(!roleIdList.isEmpty()){
			List<TsRoleBO> list =  tsRoleDAO.selectBatchIds(roleIdList);
			Map<String,TsRoleBO> map = EntityUtil.list2Map(list);

			tsRolePermitBOs.forEach(tsRolePermitBO -> {
				if(StringUtils.isNotEmpty( tsRolePermitBO.getRoleId())){
					TsRoleBO temp = map.get( tsRolePermitBO.getRoleId() );
					if(temp != null){
						tsRolePermitBO.setRoleName(temp.getRoleName());
					}
				}
			});
		}








		return tsRolePermitBOs;
	}




	@Override
	public void isExist(TsRolePermitBO tsRolePermitBO) {

	}


	@Override
	public void updateAfter(TsRolePermitBO tsRolePermitBO) {
		super.updateAfter(tsRolePermitBO);

		//以下代码块是处理企业用户
		String roleId = tsRolePermitBO.getRoleId();
		String permitId = tsRolePermitBO.getPermitId();
		List<TsRoleBO> roleList = tsRoleDAO.selectSubRoleByRole(roleId);
		roleList.forEach(item->{
			TsRolePermitBO tsRolePermit = new TsRolePermitBO();
			tsRolePermit.setRoleId(roleId);
			tsRolePermit.setPermitId(permitId);
			Wrapper<TsRolePermitBO> tsRolePermitBOWrapper = new UpdateWrapper<>(tsRolePermit);
					getDAO().delete(tsRolePermitBOWrapper);
		});

	}
}