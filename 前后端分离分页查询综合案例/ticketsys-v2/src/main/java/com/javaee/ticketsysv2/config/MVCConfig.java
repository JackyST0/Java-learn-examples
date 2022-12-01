package com.javaee.ticketsysv2.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class MVCConfig implements WebMvcConfigurer {
    // @Autowired
    // LoginInterceptor loginInterceptor;
    //
    // /**
    //  * 配置拦截的路径
    //  * @param registry
    //  */
    // @Override
    // public void addInterceptors(InterceptorRegistry registry) {
    //    registry.addInterceptor(loginInterceptor)
    //            .addPathPatterns("/ticket/**")
    //            .excludePathPatterns("/","/assets/**","/site/**","/register","/login","","/sysRole/**","/sysUser/**");
    // }
}
