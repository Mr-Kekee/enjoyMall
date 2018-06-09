<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="layout/head-common.jsp" />
        <title> enjoymmall电商平台</title>
    </head>
    <body>
        <jsp:include page="layout/nav-side.jsp" />
        <div class="page-wrap">
            <div class="w">
                <div class="user-con">
                    <div class="user-title">找回密码</div>
                    <div class="user-box">
                        <div class="error-item">
                            <i class="fa fa-minus-circle error-icon"></i>
                            <p class="err-msg">Error</p>
                        </div>
                        <div class="step-con step-username">
                            <p class="user-item-text">请输入用户名：</p>
                            <div class="user-item">
                                <label class="user-label" for="">
                                    <i class="fa fa-user"></i>
                                </label>
                                <input class="user-content" id="username" placeholder="请输入用户名" autocomplete="off">
                            </div>
                            <a class="btn btn-submit" id="submit-username">下一步</a>
                        </div>
                        <div class="step-con step-question">
                            <p class="user-item-text">密码提示问题是：<span class="question"></span></p>
                            <div class="user-item">
                                <label class="user-label" for="">
                                    <i class="fa fa-key"></i>
                                </label>
                                <input class="user-content" id="answer" placeholder="请输入密码提示问题答案" autocomplete="off">
                            </div>
                            <a class="btn btn-submit" id="submit-question">下一步</a>
                        </div>
                        <div class="step-con step-password">
                            <p class="user-item-text">请输入新密码：</p>
                            <div class="user-item">
                                <label class="user-label" for="">
                                    <i class="fa fa-lock"></i>
                                </label>
                                <input type="password" class="user-content" id="password" placeholder="请输入新密码" autocomplete="off">
                            </div>
                            <a class="btn btn-submit" id="submit-password">下一步</a>
                        </div>
                            
                        <div class="link-item">
                            <a class="link" href="/user-login.user-login.jsp" target="_blank">返回登录>></a>
                        </div>
                    </div>  
                </div>                
            </div>
        </div>
        <jsp:include page="layout/footer.jsp" />
    </body>
</html>