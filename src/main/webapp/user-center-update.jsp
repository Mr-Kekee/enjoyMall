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
                    <div class="panel-title">个人中心</div>
                    <div class="panel-body">
                        <div class="loading"></div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="layout/footer.jsp" />
    </body>
</html>