package com.zz.bms.system.bo;

import com.zz.bms.system.domain.TsPermitEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.zz.bms.annotaions.EntityAnnotation;

import java.io.Serializable;



/**
* 许可 BO , 扩展 TsPermitEntity 对象
* @author Administrator
* @date 2018-9-6 23:56:31
*/
@EntityAnnotation(value="许可" , resource = "")
@TableName(value="ts_permit" , resultMap = "TsPermitResultMap")
public class TsPermitBO extends TsPermitEntity implements Serializable {



}