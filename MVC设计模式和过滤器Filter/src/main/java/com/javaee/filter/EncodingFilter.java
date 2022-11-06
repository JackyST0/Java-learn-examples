package com.javaee.filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 编码过滤器: 将请求编码和响应编码改为utf-8类型
 */
public class EncodingFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        System.out.println("过滤器"+this.getClass().getName()+"完成初始化...");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        // 1. 强制转换为HttpServletRequest、HttpServletResponse类型
       HttpServletRequest req = (HttpServletRequest) request;
       HttpServletResponse resp = (HttpServletResponse)  response;
        // 2.设置编码类型
       req.setCharacterEncoding("UTF-8");
       resp.setCharacterEncoding("UTF-8");
       resp.setContentType("text/html");
        // 3. 调用下一个过滤器
        chain.doFilter(request,response);
      
    }

    @Override
    public void destroy() {
        System.out.println("过滤器"+this.getClass().getName()+"被销毁...");
    }
}
