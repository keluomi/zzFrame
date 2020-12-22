package com.zz.bms.system.service.impl;

import com.zz.bms.core.db.base.dao.BaseDAO;
import com.zz.bms.core.db.entity.EntityUtil;
import com.zz.bms.core.enums.EnumErrorMsg;
import com.zz.bms.core.exceptions.BizException;
import com.zz.bms.enums.EnumDictType;
import com.zz.bms.system.bo.TsDepBO;
import com.zz.bms.system.bo.TsDictBO;
import com.zz.bms.system.bo.TsOrganBO;
import com.zz.bms.system.bo.TsUserBO;
import com.zz.bms.system.dao.TsDepDAO;
import com.zz.bms.system.dao.TsOrganDAO;
import com.zz.bms.system.dao.TsUserDAO;
import com.zz.bms.system.service.TsDepService;
import com.zz.bms.system.service.TsDictService;
import com.zz.bms.system.service.TsOrganService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * 部门 ServiceImpl
 * @author Administrator
 * @date 2019-4-10 18:19:33
 */
@Service
public class TsDepServiceImpl extends SystemBaseServiceImpl<TsDepBO,String> implements TsDepService {



	@Autowired
	private TsDictService tsDictService;



	@Autowired
	private TsUserDAO tsUserDAO;


	@Autowired
	private TsDepDAO tsDepDAO ;


	@Autowired
	private TsOrganDAO tsOrganDAO;



	@Override
	public BaseDAO getDAO() {
		return tsDepDAO ;
	}



	@Override
	public TsDepBO processResult(TsDepBO tsDepBO) {


		if(StringUtils.isNotEmpty( tsDepBO.getPid())){
			TsDepBO temp = tsDepDAO.selectById( tsDepBO.getPid() );
			if(temp != null){
				tsDepBO.setPname(temp.getDepName());
			}
		}

		if(StringUtils.isNotEmpty( tsDepBO.getLeadUserId())){
			TsUserBO temp = tsUserDAO.selectById( tsDepBO.getLeadUserId() );
			if(temp != null){
				tsDepBO.setLeadUserName(temp.getUserName());
			}
		}

		if (StringUtils.isNotEmpty(tsDepBO.getOrganId())){
			TsOrganBO tsOrgan = tsOrganDAO.selectById(tsDepBO.getOrganId());
			if (tsOrgan != null){
				tsDepBO.setOrganName(tsOrgan.getOrganName());
			}
		}
		try {
			if(StringUtils.isEmpty(tsDepBO.getDepStatusName()) && StringUtils.isNotEmpty(tsDepBO.getDepStatus()) ) {
				String dictName = tsDictService.getDictName(tsDepBO.getDepStatus(),EnumDictType.DEP_STATUS.getVal());
				tsDepBO.setDepStatusName(dictName);
			}
		}catch(Exception e){

		}

		return tsDepBO;

	}





	@Override
	public List<TsDepBO> processResult(List<TsDepBO> tsDepBOs) {
		if(tsDepBOs == null || tsDepBOs.isEmpty()){
			return tsDepBOs;
		}

		Set<String> leadUserIdList = new HashSet<String>();
		Set<String> pidList = new HashSet<String>();
		Set<String> organList = new HashSet<>();

		for(TsDepBO bo : tsDepBOs)		{

			if(StringUtils.isNotEmpty( bo.getLeadUserId())){
				leadUserIdList.add(bo.getLeadUserId());
			}
			if(StringUtils.isNotEmpty( bo.getPid())){
				pidList.add(bo.getPid());
			}
			if (StringUtils.isNotEmpty(bo.getOrganId())){
				organList.add(bo.getOrganId());
			}
		}


		if(!leadUserIdList.isEmpty()){
			List<TsUserBO> list =  tsUserDAO.selectBatchIds(leadUserIdList);
			Map<String,TsUserBO> map = EntityUtil.list2Map(list);

			tsDepBOs.forEach(tsDepBO -> {
				if(StringUtils.isNotEmpty( tsDepBO.getLeadUserId())){
					TsUserBO temp = map.get( tsDepBO.getLeadUserId() );
					if(temp != null){
						tsDepBO.setLeadUserName(temp.getUserName());
					}
				}
			});
		}

		if(!pidList.isEmpty()){
			List<TsDepBO> list =  tsDepDAO.selectBatchIds(pidList);
			Map<String,TsDepBO> map = EntityUtil.list2Map(list);

			tsDepBOs.forEach(tsDepBO -> {
				if(StringUtils.isNotEmpty( tsDepBO.getPid())){
					TsDepBO temp = map.get( tsDepBO.getPid() );
					if(temp != null){
						tsDepBO.setPname(temp.getDepName());
					}
				}
			});
		}

		if (!organList.isEmpty()){
			List<TsOrganBO> list = tsOrganDAO.selectBatchIds(organList);
			Map<String,TsOrganBO> map = EntityUtil.list2Map(list);
			tsDepBOs.forEach(tsDepBO -> {
				if(StringUtils.isNotEmpty( tsDepBO.getOrganId())){
					TsOrganBO temp = map.get( tsDepBO.getOrganId() );
					if(temp != null){
						tsDepBO.setOrganName(temp.getOrganName());
					}
				}
			});
		}



		String[] dictTypes = new String[]{EnumDictType.DEP_STATUS.getVal()};
		Map<String , TsDictBO> dictMap = tsDictService.allDict(dictTypes);

		tsDepBOs.forEach(tsDepBO -> {
			if(StringUtils.isEmpty(tsDepBO.getDepStatusName()) && StringUtils.isNotEmpty(tsDepBO.getDepStatus()) ) {
				TsDictBO dict = dictMap.get(EnumDictType.DEP_STATUS.getVal() + tsDepBO.getDepStatus());
				if(dict != null) {
					tsDepBO.setDepStatusName(dict.getDictName());
				}
			}
		});


		return tsDepBOs;
	}





	@Override
	public void isExist(TsDepBO tsDepBO) {

		TsDepBO ckBO ;
		TsDepBO temp = null ;

		ckBO = new TsDepBO();
		ckBO.setId( tsDepBO.getId() );
		ckBO.setDepCode(tsDepBO.getDepCode());
		ckBO.setOrganId(tsDepBO.getOrganId());
		temp = this.selectCheck(ckBO);
		if (EntityUtil.isEntityExist(temp)) {
			throw new BizException(EnumErrorMsg.business_error.getCode(),"    ");
		}
		ckBO = new TsDepBO();
		ckBO.setId( tsDepBO.getId() );
		ckBO.setDepName(tsDepBO.getDepName());
		ckBO.setOrganId(tsDepBO.getOrganId());
		temp = this.selectCheck(ckBO);
		if (EntityUtil.isEntityExist(temp)) {
			throw new BizException(EnumErrorMsg.business_error.getCode(),"    ");
		}

	}


}