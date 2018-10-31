<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort() + path ;
%>
<html>
<head>
    <title>登录错误</title>
    <link rel="stylesheet" href="<%=basePath%>/lib/bootstrap.min.css"/>
</head>
<body>

<br/>
<br/>
<br/>
<div style="text-align:center"><h2>${message}</h2></div>
<br/>
<div style="text-align:center">
    <a href="<%=basePath%>/user/index.do">
        <button type="button" class="btn btn-primary btn-lg">点击我返回登录</button>
    </a>
</div>
</body>
</html>
