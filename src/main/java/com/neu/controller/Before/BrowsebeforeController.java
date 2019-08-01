package com.neu.controller.Before;


import com.neu.bean.Address;
import com.neu.bean.Goods;
import com.neu.bean.GoodsExtend;
import com.neu.bean.User;
import com.neu.service.GoodsService;
import com.neu.service.UserService;
import com.neu.util.MyUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class BrowsebeforeController {

    @Autowired
    private GoodsService goodsService;

    @Autowired
    private UserService userService;
    //转到搜索页
    @RequestMapping(value="/searchgoods.do")
    public ModelAndView searchGoods(String searchgoods){
        ModelAndView model=new ModelAndView();
        if(searchgoods.equals("")){
            model.addObject("goodsList",null);
            model.setViewName("/before/searchresult.jsp");
            return model;
        }
      List<Goods> goodsList=goodsService.findGoodsbyvague(searchgoods);
      model.addObject("goodsList",goodsList);
      model.setViewName("/before/searchresult.jsp");
      return model;
    }
    //转到详情页
    @RequestMapping(value="/goodsdetail.do")
    public ModelAndView GoodsDetail(Integer id){
       // System.out.println(goodid);
        ModelAndView model=new ModelAndView();
        Goods good=goodsService.findGoodsById(id);
        model.addObject("good",good);
        model.setViewName("/before/goodsdetail.jsp");
        return model;
    }
    //转到首页
    @RequestMapping(value="/Browse.do")
    public ModelAndView BrowseGoods(){
        ModelAndView model=new ModelAndView();
        List<GoodsExtend> list1=goodsService.findGoodsSum();
        List<GoodsExtend> list2=goodsService.findGoodsCount();
        List<Goods> list3=goodsService.findGoodsAll();
        model.addObject("goodsSum",list1);
        model.addObject("goodCount",list2);
        model.addObject("goodslist",list3);
        model.setViewName("/before/Browse.jsp");
        return model;
    }
    /**
     * 查询用户信息
     * @return
     */
    @RequestMapping(value="/usermanage.do")
    public ModelAndView usermanage(HttpServletRequest request, HttpSession session)throws IOException {
        //HttpSession session=request.getSession();
        int id= MyUtil.getUserId(session);

        ModelAndView model=new ModelAndView();
        User user=userService.findUserById(id);
        model.addObject("user",user);
        model.setViewName("before/usermanage.jsp");
        return  model;
    }

    /**
     *
     * @param username
     * @param realname
     * @param identity
     * @param birthday
     * @param email
     * @param tipsquestion
     * @param tipsanswer
     * @param createtime
     * @param id
     * @param sex
     * @param password
     * @return
     * 修改用户信息
     */
    @RequestMapping(value="/updateuser.do")
    @ResponseBody
    public String updateuser(String username, String realname, String identity,
                             Date birthday, String email, String tipsquestion,
                             String tipsanswer, String createtime,
                             Integer id, String sex, String password){
        User user=new User();
        user.setId(id);
        user.setUsername(username);
        user.setRealname(realname);
        user.setCard(identity);
        user.setBirthday(birthday);
        user.setEmail(email);
        user.setSex(sex);
        DateFormat format= new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = null;
        try {
            date =  format.parse(createtime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        user.setCreatetime(date);
        user.setTipsanswer(tipsanswer);
        user.setTipsquestion(tipsquestion);
        user.setPassword(password);
        if(userService.modifyUser(user)){
            return  "1";
        }
        return "0";
    }

    /**
     * 删除地址
     * @param addrId
     * @return
     */
    @RequestMapping(value="/delAddress.do")
    public ModelAndView delAddress(Integer addrId){
        ModelAndView model=new ModelAndView();
        int a=0;
        userService.removeAddress(addrId);
        model.setViewName("/usermanage.do");
        return  model;
    }
    /**
     * 根据id查找地址
     */
    @RequestMapping(value="/Addr.do")
    public ModelAndView Addr(Integer addrId){
        ModelAndView model=new ModelAndView();
        Address address=userService.findAddressById(addrId);
        System.out.println(address);
        model.addObject("address",address);
        model.setViewName("/before/addr.jsp");
        return  model;
    }
    /**
     * 编辑地址
     */
    @RequestMapping(value="/updateaddr.do",method = RequestMethod.POST)
    @ResponseBody
    public String updateAddr(HttpServletRequest request){

        String id = request.getParameter("id");
        int idd = Integer.parseInt(id);
        String zipcode = request.getParameter("zipCode");
        String site = request.getParameter("addr");
        String phone = request.getParameter("phone");
        String receiver = request.getParameter("receiver");
        boolean flag = userService.modifyAddress(idd,zipcode,site,phone,receiver);
        System.out.println(flag);
        if(flag){
            return "1";
        }
        return "0";
    }
    @RequestMapping(value="/InsertAddr.do")
    @ResponseBody
    public String InsertAddr(Integer userId,String zipcode,String site,String phone,String receiver){
        Address address=new Address();
        address.setUserid(userId);
        address.setZipcode(zipcode);
        address.setSite(site);
        address.setPhone(phone);
        address.setReceiver(receiver);
        if(userService.addAddress(address)){
            return "1";
        }
        return "0";
    }
}
