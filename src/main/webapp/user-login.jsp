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
                    <div class="user-title">用户登录</div>
                    <div class="user-box">
                        <div class="error-item">
                            <i class="fa fa-minus-circle error-icon"></i>
                            <p class="err-msg">Error</p>
                        </div>
                        <div class="user-item">
                            <label class="user-label" for="">
                                <i class="fa fa-user"></i>
                            </label>
                            <input class="user-content" id="username" placeholder="请输入用户名" autocomplete="off">
                        </div>
                        <div class="user-item">
                            <label class="user-label" for="password">
                                <i class="fa fa-lock"></i>
                            </label>
                            <input type="password" class="user-content" id="password" placeholder="请输入密码" autocomplete="off">
                        </div>
                        <a class="btn btn-submit" id="submit">登录</a>
                        <div class="link-item">
                            <a class="link" href="user-pass-reset.user-pass-reset.jsp" target="_blank">忘记密码</a>
                            <a class="link" href="user-register.user-register.jsp" target="_blank">免费注册</a>
                        </div>
                    </div>  
                </div>                
            </div>
        </div>
        <jsp:include page="layout/footer.jsp" />
    </body>
</html>