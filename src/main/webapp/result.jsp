<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <jsp:include page="layout/head-common.jsp" />
        <title> enjoymmall电商平台</title>
    </head>
    <body>
        <jsp:include page="layout/nav-side.jsp" />
        <div class="page-wrap w">
            <div class="result-con register-success">
                <h1 class="result-title">恭喜您，注册成功！</h1>
                <div class="result-content">
                    <a class="link" href="/index.index.jsp">回到首页</a>
                    <a class="link" href="/user-login.user-login.jsp">立即去登录</a>
                </div>
            </div>
            <div class="result-con pass-reset-success">
                <h1 class="result-title">恭喜您，重置密码成功！</h1>
                <div class="result-content">
                    <a class="link" href="/index.index.jsp">回到首页</a>
                    <a class="link" href="/user-login.user-login.jsp">立即去登录</a>
                </div>
            </div>
            <div class="result-con cart-add-success">
                <h1 class="result-title">您的商品已成功加入购物车！</h1>
                <div class="result-content">
                    <a class="link" href="/index.index.jsp">继续购物</a>
                    <a class="link" href="/cart.html">去购物车查看</a>
                </div>
            </div>
            <div class="result-con default-success">
                <h1 class="result-title">恭喜您，操作成功！</h1>
                <div class="result-content">
                    <a class="link" href="/index.index.jsp">回到首页</a>
                </div>
            </div>
        </div>
        <jsp:include page="layout/footer.jsp" />
    </body>
</html>