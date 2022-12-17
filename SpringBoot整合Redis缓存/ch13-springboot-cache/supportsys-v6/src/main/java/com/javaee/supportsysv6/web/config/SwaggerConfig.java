package com.javaee.supportsysv6.web.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @Description swagger 3.0配置文件，用于生成api接口文档
 * 文档访问地址:http://localhost:8080/swagger-ui/
 * @Author huaiwenhe
 * @Date 2020/10/10
 **/
@EnableSwagger2
@Configuration
public class SwaggerConfig {
    final  static  String  packagePath="com.javaee.supportsysv6.web.controller";
    private ApiInfo apiInfo() {
        return new ApiInfoBuilder()
                // 设置页面标题
                .title("票据服务系统SupportSys管理平台api接口文档")
                // 设置联系人
                .contact(new Contact("dev", "url", "email"))
                // 描述
                .description("欢迎访问票据服务系统Supportsys-v6后端接口文档，这里是描述信息")
                // 定义版本号
                .version("1.0").build();
    }

    @Bean
    public Docket createRestApi() {
        return new Docket(DocumentationType.OAS_30).apiInfo(apiInfo()).select()
                //控制器类包路径
                .apis(RequestHandlerSelectors.basePackage(packagePath))
                .paths(PathSelectors.any()).build();
    }
}
