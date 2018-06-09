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
                    <a class="link" href="/index.html">MMall</a>
                    <span>></span>
                    <span class="link-text"></span>
                </div>
            </div>
        </div>
        <div class="page-wrap w">
            <ul class="sort-con">
                <li class="sort-item active" data-type="default">默认排序</li>
                <li class="sort-item" data-type="price">
                    <span>价格</span>
                    <i class="fa fa-sort-asc"></i>
                    <i class="fa fa-sort-desc"></i>
                </li>
            </ul>
            <!-- list 容器 -->
            <ul class="p-list-con">
                
            </ul>
            <!-- 分页容器 -->
            <div class="pagination"></div>
        </div>
        <jsp:include page="layout/footer.jsp" />
    </body>
</html>