
package com.zz.bms.enums; 
import java.io.Serializable;
import com.zz.bms.core.enums.EnumBase;

/**
 * 字典类型 角色类型
 * @author Administrator
 */
public enum EnumRoleType implements EnumBase {

  ;

  EnumRoleType(String theValue, String theName) {
        this.theValue = theValue;
        this.theName = theName;
    }

  String theValue ;
  String theName ;


   @Override
   public Serializable getTheValue() {
       return theValue;
   }


   @Override
   public String getTheName() {
       return theName;
   }


   public static EnumRoleType getEnumByValue(String v){
       for(EnumRoleType enum1 : EnumRoleType.values()){
           if(enum1.getTheValue().equals(v)){
               return enum1;
           }
       }
       return  null;
   }

}