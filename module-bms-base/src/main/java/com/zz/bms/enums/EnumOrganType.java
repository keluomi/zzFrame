
package com.zz.bms.enums; 
import java.io.Serializable;
import com.zz.bms.core.enums.EnumBase;

/**
 * 字典类型 机构类型
 * @author Administrator
 */
public enum EnumOrganType implements EnumBase {

  ;

  EnumOrganType(String theValue, String theName) {
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


   public static EnumOrganType getEnumByValue(String v){
       for(EnumOrganType enum1 : EnumOrganType.values()){
           if(enum1.getTheValue().equals(v)){
               return enum1;
           }
       }
       return  null;
   }

}