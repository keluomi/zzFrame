package com.zz.bms.system.service.impl;


import com.zz.bms.core.db.base.service.BaseService;
import com.zz.bms.core.db.base.service.impl.BaseServiceImpl;
import com.zz.bms.core.db.entity.BaseEntity;
import com.zz.bms.enums.EnumYesNo;
import com.zz.bms.system.bo.TsFileUseBO;
import com.zz.bms.system.bo.VsFileUseBO;
import com.zz.bms.system.listeners.event.EventOperation;
import com.zz.bms.system.listeners.event.TombGlobalEvent;
import com.zz.bms.system.service.TsFileUseService;
import com.zz.bms.util.spring.ReflectionUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;

import java.io.Serializable;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;

public abstract class SystemBaseServiceImpl<T extends BaseEntity<PK>,  PK extends Serializable>
        extends BaseServiceImpl<T , PK> implements BaseService<T , PK> {


    @Autowired
    ApplicationContext applicationContext;

    @Autowired
    private TsFileUseService tsFileUseService ;

    protected void processFiles(T t){
        if(!t.haveFile()){
            return ;
        }
        List<VsFileUseBO> allFileUseBO = new ArrayList<VsFileUseBO>();
        try {
            List<Field> fs = ReflectionUtil.getFileFields(t.getClass());
            for (Field f : fs) {
                f.setAccessible(true);
                Object val = f.get(t);
                if(val != null){
                    List<VsFileUseBO> fileUseBOs = (List<VsFileUseBO>)val;
                    if(fileUseBOs != null && !fileUseBOs.isEmpty()){
                        allFileUseBO.addAll(fileUseBOs);
                    }
                }
            }
        }catch (Exception e){
            e.printStackTrace();
        }

        if(allFileUseBO.isEmpty()){
            return;
        }

        List<TsFileUseBO> updateFileUses = new ArrayList<TsFileUseBO>();
        List<TsFileUseBO> deleteFileUses = new ArrayList<TsFileUseBO>();
        for(VsFileUseBO vsFileUseBO : allFileUseBO){
            TsFileUseBO tsFileUseBO = new TsFileUseBO();
            tsFileUseBO.setId(vsFileUseBO.getId());
            tsFileUseBO.setBusinessType(t.getClass().getName());
            tsFileUseBO.setBusinessId((String)t.getId());
            if(vsFileUseBO.getDeleteFlag() != null &&
                    EnumYesNo.getEnumByValue(vsFileUseBO.getDeleteFlag()) != null) {
                tsFileUseBO.setDeleteFlag(vsFileUseBO.getDeleteFlag());
                if(EnumYesNo.YES.getCode().equalsIgnoreCase(vsFileUseBO.getDeleteFlag())){
                    deleteFileUses.add(tsFileUseBO);
                }else {
                    updateFileUses.add(tsFileUseBO);
                }
            }else{
                tsFileUseBO.setDeleteFlag(EnumYesNo.NO.getCode());
                updateFileUses.add(tsFileUseBO);
            }
        }
        if(!updateFileUses.isEmpty()) {
            tsFileUseService.updateBatchById(updateFileUses);
        }

        if(!deleteFileUses.isEmpty()) {
            tsFileUseService.deletesByIds(deleteFileUses);
        }
    }


    @Override
    public void saveAfter(T t){
        processFiles(t);
    }



    @Override
    public void updateAfter(T t){
        processFiles(t);
    }

    public void doPublishEvent(String cemeteryId,String businessId, TombGlobalEvent.EnumOperationType enumOperationType, EventOperation eventOperation){
        TombGlobalEvent event = new TombGlobalEvent(enumOperationType, eventOperation, cemeteryId, businessId);
        applicationContext.publishEvent(event);
    }



}
