package com.zz.bms.system.dao;

import com.zz.bms.core.db.base.dao.BaseDAO;
import com.zz.bms.system.bo.TsRoleBO;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
* 角色 操作DAO
* @author Administrator
* @date 2019-4-10 11:08:53
*/
@Repository
public interface TsRoleDAO extends BaseDAO<TsRoleBO , String> {

    /**
     * 获取角色列表根据角色Id(角色下面有多个用户，每个用户下面又可以创建角色，查询出所有关联的角色)
     * @param roleId
     * @return
     */
     List<TsRoleBO> selectSubRoleByRole(String roleId) ;

}
