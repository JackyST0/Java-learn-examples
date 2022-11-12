package com.javaee.fileupload.web;


import lombok.Builder;
import lombok.Data;
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
import java.util.ArrayList;
import java.util.List;

@Controller
public class MultiFileController {
    @Autowired
    HttpServletRequest request;

    @GetMapping("/multifile")
    public String toFileupload1() {
        return "multifile";
    }

    @PostMapping("multifile_upload")
    public String multiFileUpload(@RequestParam MultipartFile[] files,Model model) throws IOException {
       List fileList=new ArrayList<UploadFile>();
       for (MultipartFile file:files){
           String basePath=request.getServletContext().getRealPath("/");
           File savaPath=new File(basePath+"/upload");
           // 如果文件夹不存在，创建一个新的
           if(!savaPath.exists()){
               savaPath.mkdirs();
           }
           File savaFile=new File(savaPath,file.getOriginalFilename());
           System.out.println(savaFile.getAbsolutePath());
           file.transferTo(savaFile);
           UploadFile uploadFile=UploadFile.builder().filename(file.getOriginalFilename()).fileType(file.getContentType()).fileSize(file.getSize()).fileUrl("/upload/"+file.getOriginalFilename()).build();
           fileList.add(uploadFile);
       }
       model.addAttribute("msg","文件上传成功!");
       model.addAttribute("fileList",fileList);
       return "multifile";
    }
}

@Builder
@Data
class UploadFile {
    Long id;
    String filename;
    Long fileSize;
    String fileUrl;
    String fileType;
}