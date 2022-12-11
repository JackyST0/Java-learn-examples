package com.javaee.supportsysv5.utils;


import java.io.File;

/**
 * description:
 *  方便前端调用的方法
 * @author: hevean
 * @date: 2022/04/13
 */

public class FileUtils {
    /**
     * 删除文件
     */
    public static boolean deleteFile(String filePath) {
        boolean flag = false;
        File file = new File(filePath);
        // 路径为文件且不为空则进行删除
        if (file.isFile() && file.exists()) {
            file.delete();
            flag = true;
        }
        return flag;
    }

    /**
     * 获取文件扩展名
     */
    public static String getExtendName(String fileName) {
        if (fileName == null) {
            return "";
        } else {
            return fileName.substring(fileName.lastIndexOf(".") + 1, fileName
                    .length());
        }
    }

}
