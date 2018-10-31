<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort() + path ;
%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="<%=basePath%>/lib/bootstrap.min.css"/>
    <title>首页</title>
<html>
<body>
<h2 class="text-center">SSM Demo</h2>
<hr/>
<div class="form-group-lg">
    <form action="<%=basePath%>/user/login.do" method="post" class="form-inline text-center">
        <input type="text" class="form-control" name="username" placeholder="username"/>
        <br/>
        <br/>
        <input type="password" class="form-control" name="password" placeholder="password"/>
        <br/>
        <br/>
        <input type="submit" value="登录" class="btn btn-primary btn-lg"/>
    </form>
</div>
</body>
</html>
