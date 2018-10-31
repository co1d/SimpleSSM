<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort() + path ;
%>
<html>
<link rel="stylesheet" href="<%=basePath%>/lib/bootstrap.min.css"/>
<head>
    <title>添加客户</title>
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
<div class="container">
    <h1 class="text-center">客户信息添加</h1>
    <hr/>
    <br/>
    <form class="form-inline text-center" action="<%=basePath%>/customer/save.do" method="post">
        <div class="form-group form-inline">
            <label>客户姓名：</label>
            <input type="text" name="name" class="form-control"/>
        </div>
        <br/>
        <br/>
        <div class="form-group form-inline">
            <label>客户电话：</label>
            <input type="text" name="telephone" class="form-control"/>
        </div>
        <br/>
        <br/>
        <div class="form-group form-inline">
            <label>客户住址：</label>
            <input type="text" name="address" class="form-control"/>
        </div>
        <br/>
        <br/>
        <div class="form-group form-inline">
            <label>客户备注：</label>
            <input type="text" name="remark" class="form-control"/>
        </div>
        <br/>
        <br/>
        <br/>
        <input type="submit" class="btn btn-info text-center"/>
        <input type="reset" class="btn btn-info text-center"/>
    </form>
</div>

</body>
</html>
