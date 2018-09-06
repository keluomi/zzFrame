package com.zz.bms.system.query.impl;


import java.io.Serializable;

import java.sql.Timestamp;
import java.lang.String;
import java.lang.Integer;

/**
* 文件使用 用于装载用户在查询时提交的数据
* 用于链式查询
* @author Administrator
* @date 2018-9-6 23:56:31
*/
public class TsFilesUseQueryWebImpl<PK extends Serializable> extends TsFilesUseAbstractQueryImpl<PK> implements Serializable {


            private PK id_IN;
            private PK id_NOTIN;




            private String fileId_IN;
            private String fileId_NOTIN;



            private String showName_IN;
            private String showName_NOTIN;


            private String businessType_IN;
            private String businessType_NOTIN;




            private String businessTmpId_IN;
            private String businessTmpId_NOTIN;



            private String businessId_IN;
            private String businessId_NOTIN;




        //todo INT fileOrder;


            private String remark_IN;
            private String remark_NOTIN;



            private String createUserId_IN;
            private String createUserId_NOTIN;



            private String createUserName_IN;
            private String createUserName_NOTIN;




        //todo TIMESTAMP createTime;


            private String updateUserId_IN;
            private String updateUserId_NOTIN;



            private String updateUserName_IN;
            private String updateUserName_NOTIN;




        //todo TIMESTAMP updateTime;



        //todo INT versionNo;

            private PK tenantId_IN;
            private PK tenantId_NOTIN;






            public PK getId() {
                return id;
            }

            public void setId(PK id) {
                this.id = id;
            }

            public PK getId_NE() {
                return id_NE;
            }

            public void setId_NE(PK id_NE) {
                this.id_NE = id_NE;
            }

            public PK getId_IN() {
                return id_IN;
            }

            public void setId_IN(PK id_IN) {
                this.id_IN = id_IN;
            }

            public PK getId_NOTIN() {
                return id_NOTIN;
            }

            public void setId_NOTIN(PK id_NOTIN) {
                this.id_NOTIN = id_NOTIN;
            }



            public String getFileId() {
                return fileId;
            }

            public void setFileId(String fileId) {
                this.fileId = fileId;
            }

            public String getFileId_NE() {
                return fileId_NE;
            }

            public void setFileId_NE(String fileId_NE) {
                this.fileId_NE = fileId_NE;
            }

            public String getFileId_IN() {
                return fileId_IN;
            }

            public void setFileId_IN(String fileId_IN) {
                this.fileId_IN = fileId_IN;
            }

            public String getFileId_NOTIN() {
                return fileId_NOTIN;
            }

            public void setFileId_NOTIN(String fileId_NOTIN) {
                this.fileId_NOTIN = fileId_NOTIN;
            }

            public String getFileId_LIKE() {
                return fileId_LIKE;
            }

            public void setFileId_LIKE(String fileId_LIKE) {
                this.fileId_LIKE = fileId_LIKE;
            }

            public String getFileId_NOTLIKE() {
                return fileId_NOTLIKE;
            }

            public void setFileId_NOTLIKE(String fileId_NOTLIKE) {
                this.fileId_NOTLIKE = fileId_NOTLIKE;
            }


            public String getShowName() {
                return showName;
            }

            public void setShowName(String showName) {
                this.showName = showName;
            }

            public String getShowName_NE() {
                return showName_NE;
            }

            public void setShowName_NE(String showName_NE) {
                this.showName_NE = showName_NE;
            }

            public String getShowName_IN() {
                return showName_IN;
            }

            public void setShowName_IN(String showName_IN) {
                this.showName_IN = showName_IN;
            }

            public String getShowName_NOTIN() {
                return showName_NOTIN;
            }

            public void setShowName_NOTIN(String showName_NOTIN) {
                this.showName_NOTIN = showName_NOTIN;
            }

            public String getShowName_LIKE() {
                return showName_LIKE;
            }

            public void setShowName_LIKE(String showName_LIKE) {
                this.showName_LIKE = showName_LIKE;
            }

            public String getShowName_NOTLIKE() {
                return showName_NOTLIKE;
            }

            public void setShowName_NOTLIKE(String showName_NOTLIKE) {
                this.showName_NOTLIKE = showName_NOTLIKE;
            }

            public String getBusinessType() {
                return businessType;
            }

            public void setBusinessType(String businessType) {
                this.businessType = businessType;
            }

            public String getBusinessType_NE() {
                return businessType_NE;
            }

            public void setBusinessType_NE(String businessType_NE) {
                this.businessType_NE = businessType_NE;
            }

            public String getBusinessType_IN() {
                return businessType_IN;
            }

            public void setBusinessType_IN(String businessType_IN) {
                this.businessType_IN = businessType_IN;
            }

            public String getBusinessType_NOTIN() {
                return businessType_NOTIN;
            }

            public void setBusinessType_NOTIN(String businessType_NOTIN) {
                this.businessType_NOTIN = businessType_NOTIN;
            }



            public String getBusinessTmpId() {
                return businessTmpId;
            }

            public void setBusinessTmpId(String businessTmpId) {
                this.businessTmpId = businessTmpId;
            }

            public String getBusinessTmpId_NE() {
                return businessTmpId_NE;
            }

            public void setBusinessTmpId_NE(String businessTmpId_NE) {
                this.businessTmpId_NE = businessTmpId_NE;
            }

            public String getBusinessTmpId_IN() {
                return businessTmpId_IN;
            }

            public void setBusinessTmpId_IN(String businessTmpId_IN) {
                this.businessTmpId_IN = businessTmpId_IN;
            }

            public String getBusinessTmpId_NOTIN() {
                return businessTmpId_NOTIN;
            }

            public void setBusinessTmpId_NOTIN(String businessTmpId_NOTIN) {
                this.businessTmpId_NOTIN = businessTmpId_NOTIN;
            }

            public String getBusinessTmpId_LIKE() {
                return businessTmpId_LIKE;
            }

            public void setBusinessTmpId_LIKE(String businessTmpId_LIKE) {
                this.businessTmpId_LIKE = businessTmpId_LIKE;
            }

            public String getBusinessTmpId_NOTLIKE() {
                return businessTmpId_NOTLIKE;
            }

            public void setBusinessTmpId_NOTLIKE(String businessTmpId_NOTLIKE) {
                this.businessTmpId_NOTLIKE = businessTmpId_NOTLIKE;
            }


            public String getBusinessId() {
                return businessId;
            }

            public void setBusinessId(String businessId) {
                this.businessId = businessId;
            }

            public String getBusinessId_NE() {
                return businessId_NE;
            }

            public void setBusinessId_NE(String businessId_NE) {
                this.businessId_NE = businessId_NE;
            }

            public String getBusinessId_IN() {
                return businessId_IN;
            }

            public void setBusinessId_IN(String businessId_IN) {
                this.businessId_IN = businessId_IN;
            }

            public String getBusinessId_NOTIN() {
                return businessId_NOTIN;
            }

            public void setBusinessId_NOTIN(String businessId_NOTIN) {
                this.businessId_NOTIN = businessId_NOTIN;
            }

            public String getBusinessId_LIKE() {
                return businessId_LIKE;
            }

            public void setBusinessId_LIKE(String businessId_LIKE) {
                this.businessId_LIKE = businessId_LIKE;
            }

            public String getBusinessId_NOTLIKE() {
                return businessId_NOTLIKE;
            }

            public void setBusinessId_NOTLIKE(String businessId_NOTLIKE) {
                this.businessId_NOTLIKE = businessId_NOTLIKE;
            }

            public Integer getFileOrder() {
                return fileOrder;
            }

            public void setFileOrder(Integer fileOrder) {
                this.fileOrder = fileOrder;
            }

            public Integer getFileOrder_NE() {
                return fileOrder_NE;
            }

            public void setFileOrder_NE(Integer fileOrder_NE) {
                this.fileOrder_NE = fileOrder_NE;
            }

            public Integer getFileOrder_GT() {
                return fileOrder_GT;
            }

            public void setFileOrder_GT(Integer fileOrder_GT) {
                this.fileOrder_GT = fileOrder_GT;
            }

            public Integer getFileOrder_GE() {
                return fileOrder_GE;
            }

            public void setFileOrder_GE(Integer fileOrder_GE) {
                this.fileOrder_GE = fileOrder_GE;
            }

            public Integer getFileOrder_LT() {
                return fileOrder_LT;
            }

            public void setFileOrder_LT(Integer fileOrder_LT) {
                this.fileOrder_LT = fileOrder_LT;
            }

            public Integer getFileOrder_LE() {
                return fileOrder_LE;
            }

            public void setFileOrder_LE(Integer fileOrder_LE) {
                this.fileOrder_LE = fileOrder_LE;
            }



            public String getRemark() {
                return remark;
            }

            public void setRemark(String remark) {
                this.remark = remark;
            }

            public String getRemark_NE() {
                return remark_NE;
            }

            public void setRemark_NE(String remark_NE) {
                this.remark_NE = remark_NE;
            }

            public String getRemark_IN() {
                return remark_IN;
            }

            public void setRemark_IN(String remark_IN) {
                this.remark_IN = remark_IN;
            }

            public String getRemark_NOTIN() {
                return remark_NOTIN;
            }

            public void setRemark_NOTIN(String remark_NOTIN) {
                this.remark_NOTIN = remark_NOTIN;
            }

            public String getRemark_LIKE() {
                return remark_LIKE;
            }

            public void setRemark_LIKE(String remark_LIKE) {
                this.remark_LIKE = remark_LIKE;
            }

            public String getRemark_NOTLIKE() {
                return remark_NOTLIKE;
            }

            public void setRemark_NOTLIKE(String remark_NOTLIKE) {
                this.remark_NOTLIKE = remark_NOTLIKE;
            }


            public String getCreateUserId() {
                return createUserId;
            }

            public void setCreateUserId(String createUserId) {
                this.createUserId = createUserId;
            }

            public String getCreateUserId_NE() {
                return createUserId_NE;
            }

            public void setCreateUserId_NE(String createUserId_NE) {
                this.createUserId_NE = createUserId_NE;
            }

            public String getCreateUserId_IN() {
                return createUserId_IN;
            }

            public void setCreateUserId_IN(String createUserId_IN) {
                this.createUserId_IN = createUserId_IN;
            }

            public String getCreateUserId_NOTIN() {
                return createUserId_NOTIN;
            }

            public void setCreateUserId_NOTIN(String createUserId_NOTIN) {
                this.createUserId_NOTIN = createUserId_NOTIN;
            }

            public String getCreateUserId_LIKE() {
                return createUserId_LIKE;
            }

            public void setCreateUserId_LIKE(String createUserId_LIKE) {
                this.createUserId_LIKE = createUserId_LIKE;
            }

            public String getCreateUserId_NOTLIKE() {
                return createUserId_NOTLIKE;
            }

            public void setCreateUserId_NOTLIKE(String createUserId_NOTLIKE) {
                this.createUserId_NOTLIKE = createUserId_NOTLIKE;
            }


            public String getCreateUserName() {
                return createUserName;
            }

            public void setCreateUserName(String createUserName) {
                this.createUserName = createUserName;
            }

            public String getCreateUserName_NE() {
                return createUserName_NE;
            }

            public void setCreateUserName_NE(String createUserName_NE) {
                this.createUserName_NE = createUserName_NE;
            }

            public String getCreateUserName_IN() {
                return createUserName_IN;
            }

            public void setCreateUserName_IN(String createUserName_IN) {
                this.createUserName_IN = createUserName_IN;
            }

            public String getCreateUserName_NOTIN() {
                return createUserName_NOTIN;
            }

            public void setCreateUserName_NOTIN(String createUserName_NOTIN) {
                this.createUserName_NOTIN = createUserName_NOTIN;
            }

            public String getCreateUserName_LIKE() {
                return createUserName_LIKE;
            }

            public void setCreateUserName_LIKE(String createUserName_LIKE) {
                this.createUserName_LIKE = createUserName_LIKE;
            }

            public String getCreateUserName_NOTLIKE() {
                return createUserName_NOTLIKE;
            }

            public void setCreateUserName_NOTLIKE(String createUserName_NOTLIKE) {
                this.createUserName_NOTLIKE = createUserName_NOTLIKE;
            }

            public Timestamp getCreateTime() {
                return createTime;
            }

            public void setCreateTime(Timestamp createTime) {
                this.createTime = createTime;
            }

            public Timestamp getCreateTime_NE() {
                return createTime_NE;
            }

            public void setCreateTime_NE(Timestamp createTime_NE) {
                this.createTime_NE = createTime_NE;
            }

            public Timestamp getCreateTime_GT() {
                return createTime_GT;
            }

            public void setCreateTime_GT(Timestamp createTime_GT) {
                this.createTime_GT = createTime_GT;
            }

            public Timestamp getCreateTime_GE() {
                return createTime_GE;
            }

            public void setCreateTime_GE(Timestamp createTime_GE) {
                this.createTime_GE = createTime_GE;
            }

            public Timestamp getCreateTime_LT() {
                return createTime_LT;
            }

            public void setCreateTime_LT(Timestamp createTime_LT) {
                this.createTime_LT = createTime_LT;
            }

            public Timestamp getCreateTime_LE() {
                return createTime_LE;
            }

            public void setCreateTime_LE(Timestamp createTime_LE) {
                this.createTime_LE = createTime_LE;
            }


            public String getUpdateUserId() {
                return updateUserId;
            }

            public void setUpdateUserId(String updateUserId) {
                this.updateUserId = updateUserId;
            }

            public String getUpdateUserId_NE() {
                return updateUserId_NE;
            }

            public void setUpdateUserId_NE(String updateUserId_NE) {
                this.updateUserId_NE = updateUserId_NE;
            }

            public String getUpdateUserId_IN() {
                return updateUserId_IN;
            }

            public void setUpdateUserId_IN(String updateUserId_IN) {
                this.updateUserId_IN = updateUserId_IN;
            }

            public String getUpdateUserId_NOTIN() {
                return updateUserId_NOTIN;
            }

            public void setUpdateUserId_NOTIN(String updateUserId_NOTIN) {
                this.updateUserId_NOTIN = updateUserId_NOTIN;
            }

            public String getUpdateUserId_LIKE() {
                return updateUserId_LIKE;
            }

            public void setUpdateUserId_LIKE(String updateUserId_LIKE) {
                this.updateUserId_LIKE = updateUserId_LIKE;
            }

            public String getUpdateUserId_NOTLIKE() {
                return updateUserId_NOTLIKE;
            }

            public void setUpdateUserId_NOTLIKE(String updateUserId_NOTLIKE) {
                this.updateUserId_NOTLIKE = updateUserId_NOTLIKE;
            }


            public String getUpdateUserName() {
                return updateUserName;
            }

            public void setUpdateUserName(String updateUserName) {
                this.updateUserName = updateUserName;
            }

            public String getUpdateUserName_NE() {
                return updateUserName_NE;
            }

            public void setUpdateUserName_NE(String updateUserName_NE) {
                this.updateUserName_NE = updateUserName_NE;
            }

            public String getUpdateUserName_IN() {
                return updateUserName_IN;
            }

            public void setUpdateUserName_IN(String updateUserName_IN) {
                this.updateUserName_IN = updateUserName_IN;
            }

            public String getUpdateUserName_NOTIN() {
                return updateUserName_NOTIN;
            }

            public void setUpdateUserName_NOTIN(String updateUserName_NOTIN) {
                this.updateUserName_NOTIN = updateUserName_NOTIN;
            }

            public String getUpdateUserName_LIKE() {
                return updateUserName_LIKE;
            }

            public void setUpdateUserName_LIKE(String updateUserName_LIKE) {
                this.updateUserName_LIKE = updateUserName_LIKE;
            }

            public String getUpdateUserName_NOTLIKE() {
                return updateUserName_NOTLIKE;
            }

            public void setUpdateUserName_NOTLIKE(String updateUserName_NOTLIKE) {
                this.updateUserName_NOTLIKE = updateUserName_NOTLIKE;
            }

            public Timestamp getUpdateTime() {
                return updateTime;
            }

            public void setUpdateTime(Timestamp updateTime) {
                this.updateTime = updateTime;
            }

            public Timestamp getUpdateTime_NE() {
                return updateTime_NE;
            }

            public void setUpdateTime_NE(Timestamp updateTime_NE) {
                this.updateTime_NE = updateTime_NE;
            }

            public Timestamp getUpdateTime_GT() {
                return updateTime_GT;
            }

            public void setUpdateTime_GT(Timestamp updateTime_GT) {
                this.updateTime_GT = updateTime_GT;
            }

            public Timestamp getUpdateTime_GE() {
                return updateTime_GE;
            }

            public void setUpdateTime_GE(Timestamp updateTime_GE) {
                this.updateTime_GE = updateTime_GE;
            }

            public Timestamp getUpdateTime_LT() {
                return updateTime_LT;
            }

            public void setUpdateTime_LT(Timestamp updateTime_LT) {
                this.updateTime_LT = updateTime_LT;
            }

            public Timestamp getUpdateTime_LE() {
                return updateTime_LE;
            }

            public void setUpdateTime_LE(Timestamp updateTime_LE) {
                this.updateTime_LE = updateTime_LE;
            }

            public Integer getVersionNo() {
                return versionNo;
            }

            public void setVersionNo(Integer versionNo) {
                this.versionNo = versionNo;
            }

            public Integer getVersionNo_NE() {
                return versionNo_NE;
            }

            public void setVersionNo_NE(Integer versionNo_NE) {
                this.versionNo_NE = versionNo_NE;
            }

            public Integer getVersionNo_GT() {
                return versionNo_GT;
            }

            public void setVersionNo_GT(Integer versionNo_GT) {
                this.versionNo_GT = versionNo_GT;
            }

            public Integer getVersionNo_GE() {
                return versionNo_GE;
            }

            public void setVersionNo_GE(Integer versionNo_GE) {
                this.versionNo_GE = versionNo_GE;
            }

            public Integer getVersionNo_LT() {
                return versionNo_LT;
            }

            public void setVersionNo_LT(Integer versionNo_LT) {
                this.versionNo_LT = versionNo_LT;
            }

            public Integer getVersionNo_LE() {
                return versionNo_LE;
            }

            public void setVersionNo_LE(Integer versionNo_LE) {
                this.versionNo_LE = versionNo_LE;
            }


            public PK getTenantId() {
                return tenantId;
            }

            public void setTenantId(PK tenantId) {
                this.tenantId = tenantId;
            }

            public PK getTenantId_NE() {
                return tenantId_NE;
            }

            public void setTenantId_NE(PK tenantId_NE) {
                this.tenantId_NE = tenantId_NE;
            }

            public PK getTenantId_IN() {
                return tenantId_IN;
            }

            public void setTenantId_IN(PK tenantId_IN) {
                this.tenantId_IN = tenantId_IN;
            }

            public PK getTenantId_NOTIN() {
                return tenantId_NOTIN;
            }

            public void setTenantId_NOTIN(PK tenantId_NOTIN) {
                this.tenantId_NOTIN = tenantId_NOTIN;
            }

}