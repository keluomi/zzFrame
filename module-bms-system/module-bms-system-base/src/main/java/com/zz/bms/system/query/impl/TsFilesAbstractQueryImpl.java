package com.zz.bms.system.query.impl;


import com.zz.bms.core.db.mybatis.query.QueryImpl;
import com.zz.bms.system.domain.TsFilesEntity;

import java.io.Serializable;
import java.lang.Long;
import java.sql.Timestamp;
import java.lang.String;
import java.lang.Integer;

/**
 * 文件 查询抽象类
 * 用于链式查询
 * @author Administrator
 * @date 2018-9-6 23:56:31
 */
public abstract class TsFilesAbstractQueryImpl<PK extends Serializable> extends QueryImpl<TsFilesEntity,PK> {

            protected PK id;
            protected PK id_NE;

            protected String accessUrlPrefix;
            protected String accessUrlPrefix_NE;
            protected String accessUrlPrefix_LIKE;
            protected String accessUrlPrefix_NOTLIKE;

            protected String accessUrl;
            protected String accessUrl_NE;
            protected String accessUrl_LIKE;
            protected String accessUrl_NOTLIKE;

            protected String fileHost;
            protected String fileHost_NE;
            protected String fileHost_LIKE;
            protected String fileHost_NOTLIKE;

            protected String filePath;
            protected String filePath_NE;
            protected String filePath_LIKE;
            protected String filePath_NOTLIKE;

            protected String fileName;
            protected String fileName_NE;
            protected String fileName_LIKE;
            protected String fileName_NOTLIKE;

        protected Long fileSize;
        protected Long fileSize_NE;
        protected Long fileSize_GT;
        protected Long fileSize_GE;
        protected Long fileSize_LT;
        protected Long fileSize_LE;

            protected String fileSuffix;
            protected String fileSuffix_NE;
            protected String fileSuffix_LIKE;
            protected String fileSuffix_NOTLIKE;

            protected String fileEngine;
            protected String fileEngine_NE;

            protected String md5;
            protected String md5_NE;
            protected String md5_LIKE;
            protected String md5_NOTLIKE;

            protected String contentType;
            protected String contentType_NE;
            protected String contentType_LIKE;
            protected String contentType_NOTLIKE;

        protected Integer useFrequency;
        protected Integer useFrequency_NE;
        protected Integer useFrequency_GT;
        protected Integer useFrequency_GE;
        protected Integer useFrequency_LT;
        protected Integer useFrequency_LE;

            protected String deleteFlag;
            protected String deleteFlag_NE;
            protected String deleteFlag_LIKE;
            protected String deleteFlag_NOTLIKE;

            protected String createUserId;
            protected String createUserId_NE;
            protected String createUserId_LIKE;
            protected String createUserId_NOTLIKE;

            protected String createUserName;
            protected String createUserName_NE;
            protected String createUserName_LIKE;
            protected String createUserName_NOTLIKE;

        protected Timestamp createTime;
        protected Timestamp createTime_NE;
        protected Timestamp createTime_GT;
        protected Timestamp createTime_GE;
        protected Timestamp createTime_LT;
        protected Timestamp createTime_LE;

            protected String updateUserId;
            protected String updateUserId_NE;
            protected String updateUserId_LIKE;
            protected String updateUserId_NOTLIKE;

            protected String updateUserName;
            protected String updateUserName_NE;
            protected String updateUserName_LIKE;
            protected String updateUserName_NOTLIKE;

        protected Timestamp updateTime;
        protected Timestamp updateTime_NE;
        protected Timestamp updateTime_GT;
        protected Timestamp updateTime_GE;
        protected Timestamp updateTime_LT;
        protected Timestamp updateTime_LE;

        protected Integer versionNo;
        protected Integer versionNo_NE;
        protected Integer versionNo_GT;
        protected Integer versionNo_GE;
        protected Integer versionNo_LT;
        protected Integer versionNo_LE;


	
}