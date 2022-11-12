package com.javaee.fileupload.config;

import com.javaee.fileupload.interceptor.LogInterceptor;
import com.javaee.fileupload.interceptor.PerformanceInterceptor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MvcConfig implements WebMvcConfigurer {
    @Autowired
    LogInterceptor logInterceptor;

    @Autowired
    PerformanceInterceptor performanceInterceptor;

    /**
     * 注册拦截器
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
       registry.addInterceptor(logInterceptor)
               .addPathPatterns("/**")
               .excludePathPatterns("/","/assets/**","/site/**");
       registry.addInterceptor(performanceInterceptor)
               .addPathPatterns("/**");
        
    }
}
