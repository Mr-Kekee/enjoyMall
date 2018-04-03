package com.mmall.service.impl;

import com.mmall.service.IFileService;
import com.mmall.util.FTPUtil;
import com.mmall.util.PropertiesUtil;
import org.joda.time.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.UUID;

@Service("iFileService")
public class FileServiceImpl implements IFileService {

    private Logger logger = LoggerFactory.getLogger(FileServiceImpl.class);

    private static String FTP_SERVER_IP = PropertiesUtil.getProperty("ftp.server.ip");
    private static int FTP_SERVER_PORT = Integer.parseInt(PropertiesUtil.getProperty("ftp.server.port"));
    private static String FTP_SERVER_USERNAME = PropertiesUtil.getProperty("ftp.user");
    private static String FTP_SERVER_PASSWORD = PropertiesUtil.getProperty("ftp.pass");
    private static String FILE_UPLOAD_PATH = PropertiesUtil.getProperty("ftp.path");
    private static String FTP_SERVER_HTTP_PREFIX = PropertiesUtil.getProperty("ftp.server.http.prefix");

    public String upload(MultipartFile file) {
        //判断文件是否为空
        if(file.isEmpty())
            return null;
        //上传文件以日期为单位分开存放，可以提高图片的查询速度
        String filePath = new DateTime().toString("/yyyy/MM/dd");
        //取原始文件名
        String originalFilename = file.getOriginalFilename();
        //新文件名
        String newFileName = UUID.randomUUID().toString()
                + originalFilename.substring(originalFilename.lastIndexOf("."));
        //转存文件，上传到ftp服务器
        try {
            Boolean isSuccessed = FTPUtil.uploadFile(FTP_SERVER_IP, FTP_SERVER_PORT,
                    FTP_SERVER_USERNAME, FTP_SERVER_PASSWORD,
                    FILE_UPLOAD_PATH,filePath, newFileName, file.getInputStream());
            //页面显示路径
            String path = new StringBuffer().append(filePath+"/").append(newFileName).toString();
            return path;
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }
}
