package com.zz.bms.example.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.zz.bms.core.enums.EnumErrorMsg;
import com.zz.bms.enums.*;

import com.zz.bms.core.db.entity.EntityUtil;
import com.zz.bms.core.exceptions.DbException;
import com.zz.bms.core.exceptions.BizException;
import com.zz.bms.core.db.base.dao.BaseDAO;
import com.zz.bms.system.service.impl.SystemBaseServiceImpl;

import com.zz.bms.system.service.TsDictService;
import com.zz.bms.system.service.VsFileUseService;

import com.zz.bms.system.bo.VsFileUseBO;
import com.zz.bms.system.bo.TsDictBO;


import com.zz.bms.example.bo.TbOutMoneyBO;
import com.zz.bms.example.dao.TbOutMoneyDAO;
import com.zz.bms.example.service.TbOutMoneyService;

import com.zz.bms.example.bo.TbInvestorAgreementBO;
import com.zz.bms.example.dao.TbInvestorAgreementDAO;
import com.zz.bms.system.bo.TsDepBO;
import com.zz.bms.system.dao.TsDepDAO;
import com.zz.bms.example.bo.TbFundBO;
import com.zz.bms.example.dao.TbFundDAO;
import com.zz.bms.example.bo.TbInvestorBO;
import com.zz.bms.example.dao.TbInvestorDAO;
import com.zz.bms.system.bo.TsUserBO;
import com.zz.bms.system.dao.TsUserDAO;




import com.zz.bms.util.base.java.IdUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
* 出资明细 ServiceImpl
* @author Administrator
* @date 2019-6-12 19:11:19
*/
@Service
public class TbOutMoneyServiceImpl extends SystemBaseServiceImpl<TbOutMoneyBO,String> implements TbOutMoneyService {



	@Autowired
	private TsDictService tsDictService;


	@Autowired
	private VsFileUseService vsFileUseService;


    @Autowired
    private TbInvestorAgreementDAO tbInvestorAgreementDAO;
    @Autowired
    private TsDepDAO tsDepDAO;
    @Autowired
    private TbFundDAO tbFundDAO;
    @Autowired
    private TbInvestorDAO tbInvestorDAO;
    @Autowired
    private TsUserDAO tsUserDAO;


    @Autowired
    private TbOutMoneyDAO tbOutMoneyDAO ;



    @Override
    public BaseDAO getDAO() {
    	return tbOutMoneyDAO ;
    }



	@Override
	public TbOutMoneyBO processResult(TbOutMoneyBO tbOutMoneyBO) {


		if(StringUtils.isNotEmpty( tbOutMoneyBO.getInvestorAgreementId())){
			TbInvestorAgreementBO temp = tbInvestorAgreementDAO.selectById( tbOutMoneyBO.getInvestorAgreementId() );
			if(temp != null){
				tbOutMoneyBO.setInvestorAgreementName(temp.getAgreementName());
			}
		}

		if(StringUtils.isNotEmpty( tbOutMoneyBO.getHandleDepId())){
			TsDepBO temp = tsDepDAO.selectById( tbOutMoneyBO.getHandleDepId() );
			if(temp != null){
				tbOutMoneyBO.setHandleDepName(temp.getDepName());
			}
		}

		if(StringUtils.isNotEmpty( tbOutMoneyBO.getFundId())){
			TbFundBO temp = tbFundDAO.selectById( tbOutMoneyBO.getFundId() );
			if(temp != null){
				tbOutMoneyBO.setFundName(temp.getFundName());
			}
		}

		if(StringUtils.isNotEmpty( tbOutMoneyBO.getInvestorId())){
			TbInvestorBO temp = tbInvestorDAO.selectById( tbOutMoneyBO.getInvestorId() );
			if(temp != null){
				tbOutMoneyBO.setInvestorName(temp.getInvestorName());
			}
		}

		if(StringUtils.isNotEmpty( tbOutMoneyBO.getHandleUserId())){
			TsUserBO temp = tsUserDAO.selectById( tbOutMoneyBO.getHandleUserId() );
			if(temp != null){
				tbOutMoneyBO.setHandleUserName(temp.getUserName());
			}
		}


		try{
			if(StringUtils.isNotEmpty(tbOutMoneyBO.getOutMoneyFiles()) && tbOutMoneyBO.getOutMoneyFilesList() == null){
			QueryWrapper<VsFileUseBO> qw = new QueryWrapper<VsFileUseBO>();
			qw.lambda().eq(VsFileUseBO::getBusinessId , tbOutMoneyBO.getId());
			qw.lambda().eq(VsFileUseBO::getBusinessTempId , tbOutMoneyBO.getOutMoneyFiles());
			List<VsFileUseBO> list = vsFileUseService.list(qw);
				tbOutMoneyBO.setOutMoneyFilesList(list);
			}
		}catch(Exception e){}



		return tbOutMoneyBO;

	}





	@Override
	public List<TbOutMoneyBO> processResult(List<TbOutMoneyBO> tbOutMoneyBOs) {
		if(tbOutMoneyBOs == null || tbOutMoneyBOs.isEmpty()){
			return tbOutMoneyBOs;
		}

		List<String> investorAgreementIdList = new ArrayList<String>();
		List<String> handleDepIdList = new ArrayList<String>();
		List<String> fundIdList = new ArrayList<String>();
		List<String> investorIdList = new ArrayList<String>();
		List<String> handleUserIdList = new ArrayList<String>();

		for(TbOutMoneyBO bo : tbOutMoneyBOs)		{

			if(StringUtils.isNotEmpty( bo.getInvestorAgreementId())){
				investorAgreementIdList.add(bo.getInvestorAgreementId());
			}
			if(StringUtils.isNotEmpty( bo.getHandleDepId())){
				handleDepIdList.add(bo.getHandleDepId());
			}
			if(StringUtils.isNotEmpty( bo.getFundId())){
				fundIdList.add(bo.getFundId());
			}
			if(StringUtils.isNotEmpty( bo.getInvestorId())){
				investorIdList.add(bo.getInvestorId());
			}
			if(StringUtils.isNotEmpty( bo.getHandleUserId())){
				handleUserIdList.add(bo.getHandleUserId());
			}
		}


		if(!investorAgreementIdList.isEmpty()){
			List<TbInvestorAgreementBO> list =  tbInvestorAgreementDAO.selectBatchIds(investorAgreementIdList);
			Map<String,TbInvestorAgreementBO> map = EntityUtil.list2Map(list);

			tbOutMoneyBOs.forEach(tbOutMoneyBO -> {
				if(StringUtils.isNotEmpty( tbOutMoneyBO.getInvestorAgreementId())){
					TbInvestorAgreementBO temp = map.get( tbOutMoneyBO.getInvestorAgreementId() );
					if(temp != null){
							tbOutMoneyBO.setInvestorAgreementName(temp.getAgreementName());
					}
				}
			});
		}

		if(!handleDepIdList.isEmpty()){
			List<TsDepBO> list =  tsDepDAO.selectBatchIds(handleDepIdList);
			Map<String,TsDepBO> map = EntityUtil.list2Map(list);

			tbOutMoneyBOs.forEach(tbOutMoneyBO -> {
				if(StringUtils.isNotEmpty( tbOutMoneyBO.getHandleDepId())){
					TsDepBO temp = map.get( tbOutMoneyBO.getHandleDepId() );
					if(temp != null){
							tbOutMoneyBO.setHandleDepName(temp.getDepName());
					}
				}
			});
		}

		if(!fundIdList.isEmpty()){
			List<TbFundBO> list =  tbFundDAO.selectBatchIds(fundIdList);
			Map<String,TbFundBO> map = EntityUtil.list2Map(list);

			tbOutMoneyBOs.forEach(tbOutMoneyBO -> {
				if(StringUtils.isNotEmpty( tbOutMoneyBO.getFundId())){
					TbFundBO temp = map.get( tbOutMoneyBO.getFundId() );
					if(temp != null){
							tbOutMoneyBO.setFundName(temp.getFundName());
					}
				}
			});
		}

		if(!investorIdList.isEmpty()){
			List<TbInvestorBO> list =  tbInvestorDAO.selectBatchIds(investorIdList);
			Map<String,TbInvestorBO> map = EntityUtil.list2Map(list);

			tbOutMoneyBOs.forEach(tbOutMoneyBO -> {
				if(StringUtils.isNotEmpty( tbOutMoneyBO.getInvestorId())){
					TbInvestorBO temp = map.get( tbOutMoneyBO.getInvestorId() );
					if(temp != null){
							tbOutMoneyBO.setInvestorName(temp.getInvestorName());
					}
				}
			});
		}

		if(!handleUserIdList.isEmpty()){
			List<TsUserBO> list =  tsUserDAO.selectBatchIds(handleUserIdList);
			Map<String,TsUserBO> map = EntityUtil.list2Map(list);

			tbOutMoneyBOs.forEach(tbOutMoneyBO -> {
				if(StringUtils.isNotEmpty( tbOutMoneyBO.getHandleUserId())){
					TsUserBO temp = map.get( tbOutMoneyBO.getHandleUserId() );
					if(temp != null){
							tbOutMoneyBO.setHandleUserName(temp.getUserName());
					}
				}
			});
		}





		return tbOutMoneyBOs;
	}


	@Override
	public void isExist(TbOutMoneyBO tbOutMoneyBO) {
	}





}