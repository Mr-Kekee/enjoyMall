<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="layout/head-common.jsp" />
        <title> enjoymmall电商平台</title>
    </head>
    <body>
        <jsp:include page="layout/nav.jsp" />
        <jsp:include page="layout/header.jsp" />
        <div class="crumb">
            <div class="w">
                <div class="crumb-con">
                    <a class="link" href="/index.index.jsp">MMall</a>
                    <span>></span>
                    <span class="link-text"></span>
                </div>
            </div>
        </div>
        <div class="page-wrap w">
            <jsp:include page="layout/nav-side.jsp" />
            <div class="content with-nav">
                <div class="panel">
                    <div class="panel-title">修改密码</div>
                    <div class="panel-body">
                        <div class="user-info">
                            <div class="form-line">
                                <span class="label">原密码：</span>
                                <input type="password" class="input" id="password" autocomplete="off"/>
                            </div>
                            <div class="form-line">
                                <span class="label">新密码：</span>
                                <input type="password" class="input" id="password-new" autocomplete="off"/>
                            </div>
                            <div class="form-line">
                                <span class="label">确认密码：</span>
                                <input type="password" class="input" id="password-confirm" autocomplete="off"/>
                            </div>
                            <span class="btn btn-submit">提交</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="layout/footer.jsp" />
    </body>
</html>