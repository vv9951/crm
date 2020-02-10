<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basepath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";

%>
<html>
<head>
    <base href="<%=basepath %>"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>添加客户</title>


    <!-- Bootstrap -->
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">



    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1 h1">
                添加用户
            </div>
        </div>
        <div class="row">
            <div class="col-md-10 col-md-offset-1">
                <form class="form" action="customer/add" method="post">
                    <div class="form-group">
                        <input class="form-control" type="text" name="customerId" placeholder="请输入账号">
                    </div>
                    <div class="form-group">
                        <input class="form-control" type="password" name="pwd" placeholder="请输入密码">
                    </div>
                    <div class="form-group">
                        ShowName：<input class="form-control" type="text" name="showName" placeholder="请输入展示名称">
                    </div>
                    <div class="form-group">
                        TrueName：<input class="form-control" type="text" name="trueName" placeholder="请输入真实名称">
                    </div>
                    <div class="form-group">
                        <label class="radio-inline">
                            <input type="radio" name="sex" value="1" checked>男
                        </label>
                        <label class="radio-inline">
                            <input type="radio" name="sex" value="0" >女
                        </label>
                    </div>
                    <div class="form-group">
                        <label class="checkbox-inline">
                            <input type="checkbox" name="hobby" value="足球">足球
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="hobby" value="篮球">篮球
                        </label>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="hobby" value="排球">排球
                        </label>
                    </div>

                    <div class="form-group">
                        <button class="btn btn-primary" type="button" onclick="submit()"> 添加 </button>
                        <button class="btn btn-danger" type="button" onclick="reset()"> 取消 </button>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="static/jquery/jquery-1.11.3-min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>

</body>
</html>