package com.javaee.supportsysv5.persistence.entity;


import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * description:
 *
 * @author: hevean
 * @date: 2022/04/19
 */

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UploadFile {
    Long id;
    String fileUUID;
    String originalFileName;
    String saveFileName;
    Long fileSize;
    String fileUrl;
    String fileType;
}
