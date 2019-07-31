package com.neu.controller.Admin;

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
    @ResponseBody
    public Model getRptChartTest(Model model)
    {
        List<UserData> userDatas = dataAnalysisService.getUserData();
        List<String> xAxis = new ArrayList<String>();
        List<String> yAxis = new ArrayList<String>();
        for (UserData userData:userDatas) {
            xAxis.add(userData.getYearMonth());
            yAxis.add(userData.getRegistration());
            System.out.println(userData);
        }
        model.addAttribute("xaxis", xAxis);
        model.addAttribute("yaxis", yAxis);
        return model;
    }

}
