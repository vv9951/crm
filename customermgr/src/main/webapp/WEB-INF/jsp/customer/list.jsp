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
    <title>用户列表</title>

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
            <div class="col-md-10 col-md-offset-1 h1">用户列表</div>
        </div>
        <div class="row">
            <div id="tb" class="col-md-10 col-md-offset-1">
                <%--<table class="table table-bordered table-striped">
                    <thead>
                        <tr>
                            <th>uuid</th>
                            <th>customerId</th>
                            <th>password</th>
                            <th>showName</th>
                            <th>trueName</th>
                            <th>registerTime</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>0001</td>
                            <td>123</td>
                            <td>小伞伞</td>
                            <td>张三</td>
                            <td>2020-01-01</td>
                        </tr>
                    </tbody>
                </table>--%>
                <script type="text/template" id="table-template">
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>uuid</th>
                            <th>customerId</th>
                            <th>password</th>
                            <th>showName</th>
                            <th>trueName</th>
                            <th>registerTime</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        {{ each records c }}
                            <tr>
                                <td>{{ c.uuid }}</td>
                                <td>{{ c.customerId }}</td>
                                <td>{{ c.pwd }}</td>
                                <td>{{ c.showName }}</td>
                                <td>{{ c.trueName }}</td>
                                <td>{{ registerTime }}</td>
                                <td><a href="/customer/toUpdate?uuid="+{{c.uuid }}>修改</a> <a href="/customer/delete?uuid="+{{c.uuid }}>删除</a></td>
                            </tr>
                        {{/each}}
                        </tbody>
                    </table>
                </script>
            </div>
            <div class="col-md-10 col-md-offset-1">
                <ul class="pagination dl-horizontal"></ul>
            </div>
        </div>
    </div>

    <!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
    <script src="static/jquery/jquery-1.11.3-min.js"></script>
    <!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
    <script src="static/bootstrap-3.3.7-dist/js/bootstrap.js"></script>
    <script src="static/bootstrap-paginator/bootstrap-paginator.js"></script>

    <!--模板插件-->
    <script src="static/template/template-web.js"></script>

    <script>
        $(function(){
            // 初始化第一页
            queryCustomers(1);

            function queryCustomers(currentPage){
                // 异步请求，分页显示用户信息
                $.ajax({
                    url:"customer/listByPage",
                    data:{"currentPage":currentPage},
                    type:"POST",
                    datatype:"json",
                    success:function(data){
                        // 将查询到是数据，设置到表格中
                        var html = template('table-template', data);
                        document.getElementById('tb').innerHTML = html;

                        //　设置分页信息
                        setPaginator(data);
                    }
                })
            }



            //分页功能
            var setPaginator = function (data) {
                $('.pagination').bootstrapPaginator({
                    bootstrapMajorVersion: 3, //对应bootstrap版本
                    currentPage: data.current, //当前页
                    numberOfPages: 10, //每次显示的页数
                    totalPages: Math.ceil(data.total / data.size), // 总页数
                    shouldShowPage:true,//是否显示该按钮
                    useBootstrapTooltip:true,
                    itemTexts:function(type, page, current){
                        if(type=="first"){
                            return "第一页";
                        } else if(type=="prev"){
                            return "上一页";
                        } else if(type=='last'){
                            return "最后页";
                        } else if(type=="next"){
                            return "下一页";
                        } else{
                            return page;
                        }
                    },

                    /**
                     * 分页点击事件
                     * @param event [jquery对象]
                     * @param originalEvent [dom原生对象]
                     * @param type [按钮类型]
                     * @param page [点击按钮对应的页码]
                     */
                    onPageClicked: function (event, originalEvent, type, page) {
                        //根据点击页数查询数据，并渲染页面
                        queryCustomers(page);
                    }
                })
            };
        })
    </script>
</body>
</html>