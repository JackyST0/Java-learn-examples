package com.javaee.fileupload.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;

@Controller
public class FileDownload {
    //修改为图片所在目录
    String basePath = "/IntelliJ IDEA 2021.3.2/project/实验8 SpringBoot Web进阶-Ajax、文件上传和拦截器技术/fileupload/src/main/resources/static/download/";

    @GetMapping("/toDownload")
    public String download() {
        return "download";
    }
    @GetMapping("/download")
    @ResponseBody
    public String fileDownLoad(HttpServletResponse response,@RequestParam String fileName,@RequestParam Integer isOnline) throws IOException {
        // 获取文件对象
        File file = new File(basePath + fileName);
        System.out.println(file.getAbsolutePath());
        if (!file.exists()) {
            return "下载文件不存在";
        }
        response.reset();
        response.setCharacterEncoding("utf-8");
        response.setContentLength((int) file.length());
        if (isOnline==0){
            response.setContentType("application/octet-stream");
            response.setHeader("Content-Disposition","attachment;filename="+URLEncoder.encode(fileName,"UTF-8"));
        }else{
            response.setHeader("Content-Disposition","inline;filename="+URLEncoder.encode(fileName,"UTF-8"));
        }


        //以流的形式返回文件内容
        BufferedInputStream bis = new BufferedInputStream(new FileInputStream(file));
        byte[] buff = new byte[1024];
        OutputStream os = response.getOutputStream();
        int i = 0;
        while ((i = bis.read(buff)) != -1) {
            os.write(buff, 0, i);
            os.flush();
        }
        return "下载成功";
    }
}
