package com.neu.controller;


import com.neu.bean.Goods;
import com.neu.bean.GoodsExtend;
import com.neu.service.GoodsService;
import com.neu.service.impl.GoodsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;


import java.util.List;

@Controller
public class BrowsebeforeController {

    @Autowired
    private GoodsService goodsService;
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
}
