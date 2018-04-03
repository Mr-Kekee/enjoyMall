mmall_learning
1,上传至服务器前需要修改：
    resources:logback.xml 日志文件的路径，tomcat目录不一样
        否则，报错：路径错误 或 （Linux）无读写权限
        
2,服务器域名 
    ProductServiceImpl:106
    
3,project 采用war打包or war exploded，地址中要加入项目名！！！