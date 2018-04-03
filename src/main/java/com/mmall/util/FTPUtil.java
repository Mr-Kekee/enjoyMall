package com.mmall.util;

import org.apache.commons.net.ftp.FTPClient;
import org.apache.commons.net.ftp.FTPReply;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.io.InputStream;

public class FTPUtil {

    private static  final Logger logger = LoggerFactory.getLogger(FTPUtil.class);

    public static boolean uploadFile(String host, int port, String username, String password, String basePath, String filePath,
                                     String filename, InputStream input) {
        boolean result = false;
        FTPClient ftp = new FTPClient();

        try {
            ftp.connect(host, port);
            ftp.login(username, password);
            int reply = ftp.getReplyCode();
            if (FTPReply.isPositiveCompletion(reply)) {
                if (!ftp.changeWorkingDirectory(basePath + filePath)) {
                    String[] dirs = filePath.split("/");
                    String tempPath = basePath;

                    for(int i = 0; i < dirs.length; ++i) {
                        String dir = dirs[i];
                        if (dir != null && !"".equals(dir)) {
                            tempPath = tempPath + "/" + dir;
                            if (!ftp.changeWorkingDirectory(tempPath)) {
                                if (!ftp.makeDirectory(tempPath)) {
                                    logger.error("didn't make dik---FtpUtil");
                                    return result;
                                }

                                ftp.changeWorkingDirectory(tempPath);
                            }
                        }
                    }
                }
                ftp.setFileType(2);
                if (!ftp.storeFile(filename, input)) {
                    logger.error("didn't store file!!!!!FtpUtil");
                    return result;
                }
                input.close();
                ftp.logout();
                return result;
            }
            ftp.disconnect();
        } catch (IOException e) {
            e.printStackTrace();
            return result;
        } finally {
            if (ftp.isConnected()) {
                try {
                    ftp.disconnect();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return result;
    }

    public FTPUtil(String ip,int port,String user,String pwd){
        this.ip = ip;
        this.port = port;
        this.user = user;
        this.pwd = pwd;
    }

    private boolean connectServer(String ip,int port,String user,String pwd){
        boolean isSuccess = false;
        ftpClient = new FTPClient();
        try {
            ftpClient.connect(ip);
            isSuccess = ftpClient.login(user,pwd);
        } catch (IOException e) {
            logger.error("连接FTP服务器异常",e);
        }
        return isSuccess;
    }

    private String ip;
    private int port;
    private String user;
    private String pwd;
    private FTPClient ftpClient;

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public int getPort() {
        return port;
    }

    public void setPort(int port) {
        this.port = port;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public FTPClient getFtpClient() {
        return ftpClient;
    }

    public void setFtpClient(FTPClient ftpClient) {
        this.ftpClient = ftpClient;
    }

}
