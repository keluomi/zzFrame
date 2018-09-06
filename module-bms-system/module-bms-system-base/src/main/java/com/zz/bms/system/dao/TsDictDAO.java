package com.zz.bms.system.dao;

import com.zz.bms.core.db.base.dao.BaseDAO;
import com.zz.bms.system.bo.TsDictBO;
import org.springframework.stereotype.Repository;

/**
* 字典信息 操作DAO
* @author Administrator
* @date 2018-9-6 23:56:30
*/
@Repository
public interface TsDictDAO extends BaseDAO<TsDictBO , String> {

}
