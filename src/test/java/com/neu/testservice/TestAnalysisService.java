package com.neu.testservice;

import com.neu.bean.Data.UserData;
import com.neu.service.DataAnalysisService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:spring.xml"})
public class TestAnalysisService {
    @Autowired
    DataAnalysisService dataAnalysisService;
    @Test
    public void testUserData() {
        List<UserData> userDatas = dataAnalysisService.getUserData();
        List<String> xAxis = new ArrayList<String>();
        List<String> yAxis = new ArrayList<String>();
        for (UserData userData:userDatas) {
            xAxis.add(userData.getYearMonth());
            yAxis.add(userData.getRegistration());
            System.out.println(userData);
        }

    }
}
