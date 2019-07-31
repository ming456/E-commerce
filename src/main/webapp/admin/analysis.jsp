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
        alert("test");
        queryRptChart();
    }

    function queryRptChart() {
        /*let xis;
        let yis;*/
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
                    for(let y in result){
                        yAxis.push(result[y].registration);
                        console.log(result[y].registration);
                    }
                    for(let x in result){
                        xAxis.push(result[x].yearMonth);
                        console.log(result[x].yearMonth);
                    }
                    /*let data={};
                    data.yAxis=yAxis;
                    data.xAxis=xAxis;
                    //let myData1=$.toJSON(data1);
                    let myData=JSON.stringify(data);
                    console.log(yAxis);
                    console.log(xAxis);
                    console.log(myData);
                    xis=myData.xAxis;
                    yis=myData.yAxis;
                    console.log(xis+"asd");
                    console.log(yis+"asd");*/
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
                type: 'line'
            }]
        };
        myChart.setOption(option);
    }
</script>
</body>
</html>
