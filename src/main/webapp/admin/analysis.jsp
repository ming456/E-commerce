<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" pageEncoding="utf-8" %>
<html>
<head>
    <!-- END: PAGE SCRIPTS -->
    <script src="${pageContext.request.contextPath}/echarts/echarts.js"></script>
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

    <title>Title</title>
</head>
<body>
<button id="btnQuery" type="submit" onclick="clicked()">点我</button>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div id="main" style="width: 600px;height:400px;"></div>
<script>

    queryRptChart();
    function clicked() {
        alert("asdsadads");
        queryRptChart();
    }

    function queryRptChart() {
        let xAxis;
        let yAxis;
        $.ajax({
            url: "/getUserData.do",
            type: "post",
            async: false,
            dataType: "json",
            data: {},
            error: function () {
                alert("asdasd")
            },
            success: function (result) {
                if (result) {
                    xAxis = result.xaxis;
                    yAxis = result.yaxis;
                    alert(xAxis);
                    alert(yAxis);
                    console.log(result);
                }
            }
        });

        let myChart = echarts.init(document.getElementById('main'));
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
                type: 'bar'
            }]
        };
        myChart.setOption(option);
    }
</script>
</body>
</html>
