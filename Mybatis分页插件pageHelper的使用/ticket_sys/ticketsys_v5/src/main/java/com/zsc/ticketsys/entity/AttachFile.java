package com.zsc.ticketsys.entity;

import lombok.Data;

import java.util.Date;

/**
 * 上传文件的相关信息
 * @author
 */
@SuppressWarnings("ALL")
@Data
public class AttachFile {
    Long id;
    String fileUUID;  //文件的UUID
    String filename;  //保存后的文件名
    String  originalFilename; //原来文件名
    Long fileSize;//文件大小
    Date createTime; //上传时间
    String fileType;  //文件类型
    Long ticketId;   //文件对应的票据
}
