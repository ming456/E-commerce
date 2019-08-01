<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="utf-8" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="../css/theme.css">
    <link rel="stylesheet" type="text/css" href="../css/admin-forms.css">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <!-- END: PAGE SCRIPTS -->
    <script src="${pageContext.request.contextPath}/echarts/echarts.js"></script>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <title>数据分析</title>
</head>
<body>
<div id="main">
    <%@ include file="head.jsp" %>
    <section id="content_wrapper">
        <section id="content" class="table-layout animated fadeIn">
            <div class="tray tray-center">
                <div class="panel-body pn">
                    <table id="message-table" class="table admin-form theme-warning">
                        <tr>
                            <td>
                                <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
                                <div id="goods_analysis" style="width: 600px;height:400px;"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
                                <div id="user_analysis" style="width: 600px;height:400px;"></div>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
                                <div id="orders_analysis" style="width: 600px;height:400px;"></div>
                            </td>
                        </tr>
                    </table>
                </div>

            </div>

        </section>


    </section>

</div>


<script>

    queryGoodsChart();
    queryUserChart();
    queryOrdersChart();

    function queryUserChart() {
        let xAxis = [];
        let yAxis = [];
        $.ajax({
            url: "/getUserData.do",
            type: "post",
            async: false,
            dataType: "json",
            data: {},
            error: function () {
                alert("error....")
            },
            success: function (result) {
                if (result) {
                    for (let y in result) {
                        yAxis.push(result[y].registration);
                        /*console.log(result[y].registration);*/
                    }
                    for (let x in result) {
                        xAxis.push(result[x].yearMonth);
                        /*console.log(result[x].yearMonth);*/
                    }
                }
            }
        });

        let myChart = echarts.init(document.getElementById('user_analysis'));
        let option = {
            title: {
                text: '用户报表',
                subtext: '月注册量'
            },
            tooltip: {
                trigger: 'axis'
            },
            toolbox: {
                show: true,
                feature: {
                    mark: {show: true},
                    dataView: {show: true, readOnly: false},
                    magicType: {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                    restore: {show: true},
                    saveAsImage: {show: true}
                }
            },
            xAxis: {
                type: 'category',
                data: xAxis
            },
            yAxis: {
                type: 'value'
            },
            series: [{
                data: yAxis,
                type: 'line'
            }]
        };
        myChart.setOption(option);
    }

    function queryGoodsChart() {
        let xAxis = [];
        let yAxis = [];
        $.ajax({
            url: "/getGoodsData.do",
            type: "post",
            async: false,
            dataType: "json",
            data: {},
            error: function () {
                alert("error....")
            },
            success: function (result) {
                if (result) {
                    for (let y in result) {
                        yAxis.push(result[y].sumGoods);
                        /*console.log(result[y].sumGoods);*/
                    }
                    for (let x in result) {
                        xAxis.push(result[x].goodsname);
                        /*console.log(result[x].goodsname);*/
                    }
                }
            }
        });

        let myChart = echarts.init(document.getElementById('goods_analysis'));
        let option = {
            title: {
                text: '商品报表',
                subtext: '库存数'
            },
            tooltip: {
                trigger: 'axis'
            },
            toolbox: {
                show: true,
                feature: {
                    mark: {show: true},
                    dataView: {show: true, readOnly: false},
                    magicType: {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                    restore: {show: true},
                    saveAsImage: {show: true}
                }
            },
            xAxis: {
                type: 'category',
                data: xAxis
            },
            yAxis: {
                type: 'value'
            },
            series: [{
                data: yAxis,
                type: 'bar'
            }]
        };
        myChart.setOption(option);
    }

    function queryOrdersChart() {
        let xAxis = [];
        let yAxis = [];
        $.ajax({
            url: "/getOrdersData.do",
            type: "post",
            async: false,
            dataType: "json",
            data: {},
            error: function () {
                alert("error....")
            },
            success: function (result) {
                if (result) {
                    for (let y in result) {
                        yAxis.push(result[y].orderStatus);
                        console.log(result[y].orderStatus);
                    }
                    for (let x in result) {
                        xAxis.push(result[x].num);
                        console.log(result[x].num);
                    }
                }
            }
        });

        let myChart = echarts.init(document.getElementById('orders_analysis'));
        let option = {
            title: {
                text: '订单报表',
                subtext: '订单成功/失败数'
            },
            tooltip: {
                trigger: 'axis'
            },
            toolbox: {
                show: true,
                feature: {
                    mark: {show: true},
                    dataView: {show: true, readOnly: false},
                    magicType: {show: true, type: ['line', 'bar', 'stack', 'tiled']},
                    restore: {show: true},
                    saveAsImage: {show: true}
                }
            },
            xAxis: {
                type: 'category',
                data: ['已支付订单', '未支付订单']
            },
            yAxis: {
                type: 'value'
            },
            series: [{
                data: xAxis,
                type: 'bar'
            }]
        };
        myChart.setOption(option);
    }
</script>
<style>
    /* demo page styles */
    body {
        min-height: 2300px;
    }

    .content-header b,
    .admin-form .panel.heading-border:before,
    .admin-form .panel .heading-border:before {
        transition: all 0.7s ease;
    }

    /* responsive demo styles */
    @media (max-width: 800px) {
        .admin-form .panel-body {
            padding: 18px 12px;
        }
    }
</style>
<style>
    .ui-datepicker select.ui-datepicker-month,
    .ui-datepicker select.ui-datepicker-year {
        width: 48%;
        margin-top: 0;
        margin-bottom: 0;

        line-height: 25px;
        text-indent: 3px;

        color: #888;
        border-color: #DDD;
        background-color: #FDFDFD;

        -webkit-appearance: none; /*Optionally disable dropdown arrow*/
    }
</style>

<!-- jQuery -->
<script src="../js/jquery.min.js"></script>
<script src="../js/jquery-ui.min.js"></script>
<!-- Theme Javascript -->
<script src="../js/utility.js"></script>
<script src="../js/demo/demo.js"></script>
<script src="../js/main.js"></script>
<script src="../js/pages.js"></script>
<!-- END: PAGE SCRIPTS -->
</body>
</html>
