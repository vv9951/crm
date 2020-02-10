<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>
<html>
<head>
    <base href="<%=basepath %>" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>欢迎访问用户管理</title>

    <!-- Bootstrap -->
    <link href="static/bootstrap-3.3.7-dist/css/bootstrap.css" rel="stylesheet">



    <!-- HTML5 shim 和 Respond.js 是为了让 IE8 支持 HTML5 元素和媒体查询（media queries）功能 -->
    <!-- 警告：通过 file:// 协议（就是直接将 html 页面拖拽到浏览器中）访问页面时 Respond.js 不起作用 -->
    <!--[if lt IE 9]>
    <script src="https://cdn.jsdelivr.net/npm/html5shiv@3.7.3/dist/html5shiv.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/respond.js@1.4.2/dest/respond.min.js"></script>
    <![endif]-->

    <%--<style>
        body{
            background-color: #0f0f0f;
        }
    </style>--%>
</head>
<body>

    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1 navbar navbar-default navbar-fixed-top">
                <div class="navbar-header navbar-brand">
                    功能管理
                </div>

                <ul class="nav navbar-nav">
                    <li> <a href="##" data-toggle="dropdown" class="dropdown-toggle">用户管理<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li> <a href="customer/toAdd">添加用户</a> </li>
                            <li> <a href="customer/toList">用户列表</a> </li>
                        </ul>
                    </li>
                    <li> <a href="##" data-toggle="dropdown" class="dropdown-toggle">购物车管理</a></li>
                </ul>
            </div>
        </div>

    </div>
   <%-- <div class="navbar navbar-default">
        <ul class="nav navbar-nav">
            <li> <a href="customer/toAdd">添加用户</a> </li>
            <li> <a href="customer/toList">用户列表</a> </li>
        </ul>
    </div>--%>


    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="static/jquery/jquery-1.11.3-min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>

</body>
</html>