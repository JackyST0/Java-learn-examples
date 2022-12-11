package com.javaee.supportsysv5.utils.codegen;

import com.baomidou.mybatisplus.annotation.DbType;
import com.baomidou.mybatisplus.annotation.FieldFill;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.generator.AutoGenerator;
import com.baomidou.mybatisplus.generator.InjectionConfig;
import com.baomidou.mybatisplus.generator.config.*;
import com.baomidou.mybatisplus.generator.config.po.TableFill;
import com.baomidou.mybatisplus.generator.config.po.TableInfo;
import com.baomidou.mybatisplus.generator.config.rules.DateType;
import com.baomidou.mybatisplus.generator.config.rules.NamingStrategy;

import java.util.ArrayList;

public class MybatisPlusCodeGen {

    /**
     * 需要配置的参数包括host, dbName, dbUsername, dbPassword
     */
    static final String host = "localhost:3306";
    static final String dbName = "supportsys-v5";
    static final String dbUsername = "root";
    static final String dbPassword = "root";


    // 以下变量不需要修改
    static final String dbUrl = "jdbc:mysql://" + host + "/" + dbName + "?useSSL=false&useUnicode=true" +
            "&characterEncoding=utf-8&serverTimezone=GMT%2B8";
    static final String dbDriver = "com.mysql.cj.jdbc.Driver";
    // static final String projectPath = System.getProperty("user.dir");

    //主函数
    public static void main(String[] args) {
        // 创建一个代码自动生成器对象
        AutoGenerator mpg = new AutoGenerator();
        // （1）全局配置；（2）数据源配置；（3）包配置；（4）策略配置

        // 1、全局配置
        GlobalConfig gc = new GlobalConfig();
        // 获取当前工程的物理路径
        String projectPath = System.getProperty("user.dir");
        // 此处指定生成的代码文件在supportsys-v5的模块中, 此处需要添加该模块路径
        gc.setOutputDir(projectPath + "/supportsys-v5/" + "/src/main/java");
        // 配置作者名
        gc.setAuthor("hevean");
        // 是否打开输出目录
        gc.setOpen(false);
        //是否覆盖原先文件
        gc.setFileOverride(true);
        // Service类命名,去Service类的I前缀
        gc.setServiceName("%sService");
        // 配置主键类型
        gc.setIdType(IdType.ID_WORKER);

        // 定义实体类中的日期类型
        gc.setDateType(DateType.ONLY_DATE);
        // 暂时不需要swagger接口文档
        gc.setSwagger2(false);
        mpg.setGlobalConfig(gc);

        //2、设置数据源
        DataSourceConfig dsc = new DataSourceConfig();
        dsc.setUrl(dbUrl);
        dsc.setDriverName(dbDriver);
        dsc.setUsername(dbUsername);
        dsc.setPassword(dbPassword);
        dsc.setDbType(DbType.MYSQL);
        mpg.setDataSource(dsc);

        //3、包的配置
        PackageConfig pc = new PackageConfig();
        // 模块文件名称 工程artifact id
        pc.setModuleName("supportsysv5");
        // 包根路径
        pc.setParent("com.javaee");
        // 实体类路径
        pc.setEntity("persistence.entity");
        // mapper接口类路径
        pc.setMapper("persistence.mapper");
        // Service类路径
        pc.setService("biz.service");
        // Service实现类路径
        pc.setServiceImpl("biz.service.impl");
        // 控制器类路径
        pc.setController("web.controller");
        mpg.setPackageInfo(pc);

        // 4、策略配置
        StrategyConfig strategy = new StrategyConfig();
        // 逆向的数据表名，可以包含多个
        strategy.setInclude("sys_user", "sys_role", "sys_user_role");
        // 数据库表映射到实体类的命名策略, 下划线转驼峰式
        strategy.setNaming(NamingStrategy.underline_to_camel);
        // 数据库表字典映射到实体类属性的命名策略
        strategy.setColumnNaming(NamingStrategy.underline_to_camel);
        // 支持lomok注解
        strategy.setEntityLombokModel(true);
        // 开启链式模式, 和@Builder模式类似
        strategy.setChainModel(true);
        // 启动@Mapper注解
        // strategy.set
        // 禁用生成序列化号
        strategy.setEntitySerialVersionUID(false);


        // 逻辑删除, 自动填充配置，目前不用
        // strategy.setLogicDeleteFieldName("is_deleted");
        mpg.setStrategy(strategy);

        // 5. 自定义配置,修改mapper映射xml文件的生成位置
        InjectionConfig cfg = new InjectionConfig() {
            @Override
            public void initMap() {
            }
        };
        // 指定xml映射文件的路径, 默认在mybatis-plus的一个jar包中
        String templatePath = "/templates/mapper.xml.vm";
        ArrayList<FileOutConfig> focList = new ArrayList<>();
        focList.add(new FileOutConfig(templatePath) {
            @Override
            public String outputFile(TableInfo tableInfo) {
                return projectPath + "/supportsys-v5/" + "/src/main/resources/mapper/" + tableInfo
                        .getEntityName() + "Mapper.xml";
            }
        });
        cfg.setFileOutConfigList(focList);
        mpg.setCfg(cfg);
        TemplateConfig templateConfig = new TemplateConfig();
        // 取消原来xml文件的生成
        templateConfig.setXml(null);
        mpg.setTemplate(templateConfig);
        // 执行
        mpg.execute();
    }
}
