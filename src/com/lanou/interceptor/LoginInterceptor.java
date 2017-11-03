package com.lanou.interceptor;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;
import org.apache.commons.lang3.StringUtils;
import org.apache.struts2.ServletActionContext;

import javax.servlet.Servlet;

/**
 * Created by dllo on 17/10/12.
 */
public class LoginInterceptor extends MethodFilterInterceptor {
    @Override
    protected String doIntercept(ActionInvocation actionInvocation) throws Exception {
        /*如果想指定的拦截动作和方法,拦截器继承MethodFilterInterceptor
        * 该类中有两个集合:
        * excludeMethod:包含排除拦截的方法,即那些方法不拦截
        * includeMethods:包含拦截的方法,即指定那些方法进行拦截*/
       String username = (String) ServletActionContext.getServletContext().getAttribute("user");//获取用户名
        if (StringUtils.isBlank(username)){
            return "login";//如果没登录跳转去登录
        }
        return actionInvocation.invoke();
    }
}
