package com.zz.bms.system.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zz.bms.core.db.base.dao.BaseDAO;
import com.zz.bms.core.db.entity.EntityUtil;
import com.zz.bms.core.enums.EnumErrorMsg;
import com.zz.bms.system.bo.TsRoleBO;
import com.zz.bms.system.bo.TsUserBO;
import com.zz.bms.system.bo.TsUserRoleBO;
import com.zz.bms.system.dao.TsRoleDAO;
import com.zz.bms.system.dao.TsUserDAO;
import com.zz.bms.system.dao.TsUserRoleDAO;
import com.zz.bms.system.service.TsDictService;
import com.zz.bms.system.service.TsUserRoleService;
import com.zz.bms.util.base.java.IdUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 用户角色关联 ServiceImpl
 * @author Administrator
 * @date 2019-4-10 18:45:42
 */
@Service
public class TsUserRoleServiceImpl extends SystemBaseServiceImpl<TsUserRoleBO,String> implements TsUserRoleService {



	@Autowired
	private TsDictService tsDictService;



	@Autowired
	private TsRoleDAO tsRoleDAO;
	@Autowired
	private TsUserDAO tsUserDAO;


	@Autowired
	private TsUserRoleDAO tsUserRoleDAO ;



	@Override
	public BaseDAO getDAO() {
		return tsUserRoleDAO ;
	}



	@Override
	public TsUserRoleBO processResult(TsUserRoleBO tsUserRoleBO) {


		if(StringUtils.isNotEmpty( tsUserRoleBO.getRoleId())){
			TsRoleBO temp = tsRoleDAO.selectById( tsUserRoleBO.getRoleId() );
			if(temp != null){
				tsUserRoleBO.setRoleName(temp.getRoleName());
				tsUserRoleBO.setRoleCode(temp.getRoleCode());
			}
		}

		if(StringUtils.isNotEmpty( tsUserRoleBO.getUserId())){
			TsUserBO temp = tsUserDAO.selectById( tsUserRoleBO.getUserId() );
			if(temp != null){
				tsUserRoleBO.setUserName(temp.getUserName());
				tsUserRoleBO.setUserEmail(temp.getEmail());
				tsUserRoleBO.setUserPhone(temp.getPhone());
			}
		}

		return tsUserRoleBO;

	}





	@Override
	public List<TsUserRoleBO> processResult(List<TsUserRoleBO> tsUserRoleBOs) {
		if(tsUserRoleBOs == null || tsUserRoleBOs.isEmpty()){
			return tsUserRoleBOs;
		}

		List<String> roleIdList = new ArrayList<String>();
		List<String> userIdList = new ArrayList<String>();

		for(TsUserRoleBO bo : tsUserRoleBOs)		{

			if(StringUtils.isNotEmpty( bo.getRoleId())){
				roleIdList.add(bo.getRoleId());
			}
			if(StringUtils.isNotEmpty( bo.getUserId())){
				userIdList.add(bo.getUserId());
			}
		}


		if(!roleIdList.isEmpty()){
			List<TsRoleBO> list =  tsRoleDAO.selectBatchIds(roleIdList);
			Map<String,TsRoleBO> map = EntityUtil.list2Map(list);

			tsUserRoleBOs.forEach(tsUserRoleBO -> {
				if(StringUtils.isNotEmpty( tsUserRoleBO.getRoleId())){
					TsRoleBO temp = map.get( tsUserRoleBO.getRoleId() );
					if(temp != null){
						tsUserRoleBO.setRoleName(temp.getRoleName());
						tsUserRoleBO.setRoleCode(temp.getRoleCode());
					}
				}
			});
		}

		if(!userIdList.isEmpty()){
			List<TsUserBO> list =  tsUserDAO.selectBatchIds(userIdList);
			Map<String,TsUserBO> map = EntityUtil.list2Map(list);

			tsUserRoleBOs.forEach(tsUserRoleBO -> {
				if(StringUtils.isNotEmpty( tsUserRoleBO.getUserId())){
					TsUserBO temp = map.get( tsUserRoleBO.getUserId() );
					if(temp != null){
						tsUserRoleBO.setUserName(temp.getUserName());
						tsUserRoleBO.setUserEmail(temp.getEmail());
						tsUserRoleBO.setUserPhone(temp.getPhone());
					}
				}
			});
		}
		return tsUserRoleBOs;
	}


	@Transactional
    @Override
    public void saveBatchRelevance(List<TsUserRoleBO> list, TsUserRoleBO t) {
	    if(t == null || (EntityUtil.isEmpty(t.getUserId()) && EntityUtil.isEmpty(t.getRoleId()) )){
	        throw EnumErrorMsg.param_format_error.toException();
        }

	    if(!EntityUtil.isEmpty(t.getUserId())){
            QueryWrapper<TsUserRoleBO> qw = new QueryWrapper<TsUserRoleBO>();
            qw.eq("user_id", t.getUserId());
	        this.getDAO().delete(qw);
	        if(list != null && !list.isEmpty()){
	            for(TsUserRoleBO bo : list){
	                bo.setUserId(t.getUserId());
	                if(EntityUtil.isEmpty(bo.getId())){
	                	bo.setId(IdUtils.getId());
					}
                }
	            this.saveBatch(list);
            }
        }else if(!EntityUtil.isEmpty(t.getRoleId())){

            QueryWrapper<TsUserRoleBO> qw = new QueryWrapper<TsUserRoleBO>();
            qw.eq("role_id", t.getRoleId());
            this.getDAO().delete(qw);
            if(list != null && !list.isEmpty()){
                for(TsUserRoleBO bo : list){
                    bo.setRoleId(t.getRoleId());
					if(EntityUtil.isEmpty(bo.getId())){
						bo.setId(IdUtils.getId());
					}
                }
                this.saveBatch(list);
            }
        }else {
            throw EnumErrorMsg.param_format_error.toException();
        }



    }


	@Override
	public void isExist(TsUserRoleBO tsUserRoleBO) {
	}


}