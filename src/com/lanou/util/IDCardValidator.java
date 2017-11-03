package com.lanou.util;

import com.opensymphony.xwork2.validator.ValidationException;
import com.opensymphony.xwork2.validator.validators.FieldValidatorSupport;

/**
 * Created by dllo on 17/10/12.
 */
public class IDCardValidator extends FieldValidatorSupport {
    @Override
    public void validate(Object o) throws ValidationException {
        /*自定义验证类型,即扩展原来的Struts支持的集中常见的验证type
        *  仿照RequiredStringValidator的实现方法*/

        String filedName = getFieldName();//获得验证的属性名称
        //根据属性名称获得该属性对应的值
        String value = (String) getFieldValue(filedName,o);
        System.out.println("属性值:" + value);

        IDCard idCard = new IDCard();
        //调用身份证号码验证
        boolean result = idCard.Verify(value);
        if (!result){
            //addFieldError(filedName,"输入的不符合身份证号码!");
            addFieldError(filedName,o);
        }
    }
}
