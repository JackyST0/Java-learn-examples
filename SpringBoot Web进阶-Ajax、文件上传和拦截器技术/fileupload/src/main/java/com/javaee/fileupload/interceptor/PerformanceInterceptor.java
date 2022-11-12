package com.javaee.fileupload.interceptor;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 性能分析拦截器
 */
@Component
public class PerformanceInterceptor implements HandlerInterceptor {
    Long last;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
         last = System.nanoTime();
        // 按照正常流程执行
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           ModelAndView modelAndView)
            throws Exception {
        double elapsedTime = (double) (System.nanoTime()-last/1_000_000);
        System.out.println("性能拦截器--请求地址:"+request.getRequestURI()+";执行时间为:"+elapsedTime+"秒");
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
        System.out.println("性能拦截器--拦截器执行,请求访问结束...");
        System.out.println(System.getProperty("file.encoding"));
    }
}
