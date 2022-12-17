package com.javaee.supportsysv6.web.interceptor;

import com.javaee.supportsysv6.biz.domain.WebConstants;
import com.javaee.supportsysv6.persistence.entity.SysUser;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * 描述: 用户登录拦截器
 */
@Component
public class LoginInterceptor implements HandlerInterceptor {
    @Autowired
    HttpSession session;

    Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

    /**
     * 在请求到达Controller控制器之前 通过拦截器执行一段代码
     * 如果方法返回true,继续执行后续操作
     * 如果返回false，执行中断请求处理，请求不会发送到Controller
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        logger.info("拦截器1 在控制器执行之前执行");

        Object user =  session.getAttribute(WebConstants.LOGIN_USER);
        if (user == null){
            response.sendRedirect("/login");
        }
        return true;
    }

    /**
     * 控制器之后，跳转前
     */
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView)
            throws Exception {
        logger.info("拦截器1 在控制器执行之后执行");
    }

    /**
     * 跳转之后执行
     */
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
        logger.info("拦截器1 最后执行");
    }
}
