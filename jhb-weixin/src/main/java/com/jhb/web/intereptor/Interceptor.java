package com.jhb.web.intereptor;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Interceptor extends HandlerInterceptorAdapter {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        // 验证session
        if (!validateSession(request, response)) {
            String contextPath=request.getContextPath();
            response.sendRedirect(contextPath + "/sysuser/login");
            return false;
        }

        return true;
    }

    private boolean validateSession(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Boolean isLoginOrNot = (Boolean)request.getSession().getAttribute("isLogin");
        if(isLoginOrNot == null || isLoginOrNot == false){
            return false;
        }
        return true;
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
        // TODO Auto-generated method stub
        super.afterCompletion(request, response, handler, ex);

    }

}