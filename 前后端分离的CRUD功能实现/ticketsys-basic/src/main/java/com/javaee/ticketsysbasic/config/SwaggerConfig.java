package com.javaee.ticketsysbasic.config;

import com.github.xiaoymin.knife4j.spring.annotations.EnableKnife4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.oas.annotations.EnableOpenApi;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;

/**
 * @Description swagger 3.0配置文件，用于生成api接口文档
 * Swagger3原始文档访问地址:http://localhost:8080/swagger-ui/
 * knife4j文档访问地址：http://localhost:8080/doc.html（推荐使用）
 **/

//该注解是Springfox-swagger框架提供的使用Swagger注解，该注解必须加
@EnableOpenApi
//该注解是knife4j提供的增强注解,Ui提供了例如动态参数、参数过滤、接口排序等增强功能,如果你想使用这些增强功能就必须加该注解，否则可以不用加
@EnableKnife4j
// 配置类
@Configuration
public class SwaggerConfig {
    final static String packagePath = "com.javaee.ticketsysbasic.web.api";
    /**
     * API页面信息配置
     * @return
     */
    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                // 设置页面标题
                .title("平台api接口文档")
                // 设置联系人
                .contact(new Contact("dev", "url", "email"))
                // 描述
                .description("demo系统后端接口文档，这里是描述信息")
                // 定义版本号
                .version("1.0").build();
    }

    /**
     * 接口构建器
     */
    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.OAS_30).apiInfo(apiInfo()).select()
                //控制器类包路径
                .apis(RequestHandlerSelectors.basePackage(packagePath)).paths(PathSelectors.any()).build();
    }
}
