package com.neu.controller.Admin;

import com.neu.bean.Data.GoodsData;
import com.neu.bean.Data.OrdersData;
import com.neu.bean.Data.UserData;
import com.neu.service.DataAnalysisService;
import com.neu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AnalysisController {
    @Autowired
    DataAnalysisService dataAnalysisService;

    @RequestMapping("/getUserData.do")
    public @ResponseBody List getRptChartTest()
    {
        List<UserData> userDatas = dataAnalysisService.getUserData();
        return userDatas;
    }

    @RequestMapping("/getGoodsData.do")
    public @ResponseBody List getGoodsChart()
    {
        List<GoodsData> goodsData = dataAnalysisService.getGoodsData();
        return goodsData;
    }

    @RequestMapping("/getOrdersData.do")
    public @ResponseBody List getOrdersChart()
    {
        List<OrdersData> odersData = dataAnalysisService.getOrdersData();
        return odersData;
    }
}
