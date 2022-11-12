package com.javaee.fileupload.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.net.http.HttpRequest;

@Controller
public class SingleFileController {
   // 注入request对象
    @Autowired
    HttpServletRequest request;

    // 跳转到文件上传页面
    @GetMapping("/singlefile")
    public String toFileupload1() {
        return "singlefile";
    }

    @PostMapping("singlefile_upload")
    public String singleFileUpload(@RequestParam MultipartFile file,Model model) throws IOException {
        System.out.println("文件类型:"+file.getContentType()+";文件名:"+file.getOriginalFilename()+";文件大小:"+file.getSize());
        // 获取源文件名
        String filename=file.getOriginalFilename();
        // 获取文件大小
        Long filesize=file.getSize();
        //获取web对应的物理路径
        String basePath=request.getServletContext().getRealPath("/");

        File savePath=new File(basePath+"/upload");
        //如果文件夹不存在，新建一个
        if(!savePath.exists()){
            savePath.mkdirs();
        }
        File savaFile=new File(savePath,filename);
        // 保存文件
        file.transferTo(savaFile);
        model.addAttribute("msg","文件上传成功!");
        model.addAttribute("filename",filename);
        model.addAttribute("filesize",filesize);
        model.addAttribute("fileurl","/upload/"+filename);
        return "singlefile";
    }
}
