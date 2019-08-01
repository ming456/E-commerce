package com.neu.util;

import com.neu.bean.User;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

public class MyUtil {
    public Date getDatatime1() {
        return datatime1;
    }

    public void setDatatime1(Date datatime1) {
        this.datatime1 = datatime1;
    }

    public Date getDatatime2() {
        return datatime2;
    }

    public void setDatatime2(Date datatime2) {
        this.datatime2 = datatime2;
    }

    private Date datatime1;
    private Date datatime2;

    public static String getStringID(){
        String id=null;
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmssSSS");
        id=sdf.format(date);
        return id;
    }
    /**
     * 获得用户
     * @param session
     * @return
     */
    public static Integer getUserId(HttpSession session){

        User user = (User)session.getAttribute("user");
        return user.getId();
    }
   public static long getRandoms(){
        long num = (long)(Math.random()*(9999999L-1000000L))+1000000L;
        return num;
   }
}
