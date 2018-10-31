<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort() + path ;
%>
<html>
<link rel="stylesheet" href="<%=basePath%>/lib/bootstrap.min.css"/>
<head>
    <title>Home</title>
</head>
<body>
<div class="sidebar text-left">
    <nav class="navbar navbar-default" role="navigation" style="text-align: center;">
        <div class="container-fluid">
            <div>
                <ul class="nav navbar-nav" style="display: inline-block;float: none;">
                    <li><a href="<%=basePath%>/customer/toAddPage.do"><strong>添加信息</strong></a></li>
                    <li><a href="<%=basePath%>/customer/toListPage.do"><strong>查询</strong></a></li>
                </ul>
            </div>
        </div>
    </nav>
</div>
<br/>
<br/>
<br/>
<h1 class="text-center">${message}</h1>


</body>
</html>
