package com.neu.controller.Admin;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.neu.bean.Goods;
import com.neu.bean.Type;
import com.neu.service.AdminGoodsService;
import com.neu.service.AdminTypeService;
import com.neu.utils.RandomUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.List;

@Controller
public class AdminGoodsController {
    @Autowired
    private AdminGoodsService adminGoodsService;
    @Autowired
    private AdminTypeService adminTypeService;

    //列出所有商品  商品详情页
    @RequestMapping("/findGoods.do")
    public String doListGoods(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
        // 这不是一个分页查询；
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 8);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Goods> list = adminGoodsService.findAllGoods();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(list, 5);
        model.addAttribute("pageInfo", page);
        return "/admin/goods_list.jsp";
    }

    //进入商品添加页面
    @RequestMapping("/toAddGoods.do")
    public String toAdd(HttpServletRequest request) {
        List<Type> list = adminTypeService.findAllType2();
        System.out.println(list);
        request.getSession().setAttribute("typesList", list);
        request.setAttribute("typesList", list);
        return "admin/goods_add.jsp";
    }

    //按保存按钮后 插入goods表
    @RequestMapping("/addGoods.do")
    public String doAddGoods(Goods goods,HttpServletRequest request,Model model) throws IOException {
        //从jsp获取内容
        String goodsname = request.getParameter("goodsname");
        System.out.println(request.getParameter("classify"));
        int classify = Integer.parseInt(request.getParameter("classify"));
        String details = request.getParameter("details");
        float price = Float.parseFloat(request.getParameter("price"));
        int count = Integer.parseInt(request.getParameter("count"));
        String title = request.getParameter("title");

//        如果文件不为空，写入上传路径
        if (!goods.getPhoto().isEmpty()) {
            //上传文件名
            String fileName = goods.getPhoto().getOriginalFilename();
            if (fileName.endsWith(".jpg") || fileName.endsWith(".png")) {
                //上传文件路径
                String path = request.getServletContext().getRealPath("/upload");
                //获得文件的后缀名
                String suffix = fileName.substring(fileName.lastIndexOf("."));
                //生成新的文件名
                fileName = RandomUtil.getRandomFileName() + suffix;
                //获得文件路径
                File filepath = new File(path, fileName);
                if (!filepath.getParentFile().exists()) {
                    filepath.getParentFile().mkdirs();
                }
                //完成上传
                goods.getPhoto().transferTo(filepath);
                System.out.println(filepath);
                //将文件名添加到Model中
                model.addAttribute("fileName", fileName);
                System.out.println(fileName);
                goods.setImgpath("upload/"+fileName);
                adminGoodsService.addGoods(goods);
                return "redirect:/findGoods.do";
            }
        }else {
            return "fail.jsp";
        }
        goods.setGoodsname(goodsname);
        goods.setClassify(classify);
        goods.setDetails(details);
        goods.setPrice(price);
        goods.setCount(count);
        goods.setTitle(title);
        adminGoodsService.addGoods(goods);
        return null;
//        System.out.println(goods);
//        return "";

    }

    //删除商品
    @RequestMapping("/delGoods.do")
    public String doDelGoods(HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println(id);
        adminGoodsService.delGoods(id);
        return "redirect:/findGoods.do";
    }

    //查看商品详情
    @RequestMapping("/infoGoods.do")
    public String doInfoGoods(HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("id"));
        System.out.println(id);
        Goods goods = adminGoodsService.findGoodsById(id);
        request.setAttribute("goods",goods);
        return "/admin/goods_info.jsp";
    }

    //编辑商品页面
    @RequestMapping("/editGoods.do")
    public String doEditGoods(HttpServletRequest request){
        int id = Integer.parseInt(request.getParameter("id"));
        Goods goods = adminGoodsService.findGoodsById(id);
        List<Type> list = adminTypeService.findAllType2();
//        System.out.println(list);
        request.setAttribute("typeslist", list);
        request.setAttribute("goods",goods);
        return "/admin/goods_edit.jsp";
    }

    //更新商品操作
    @RequestMapping("/updateGoods.do")
    public String doUpdateGoods(HttpServletRequest request,Goods goods,Model model) throws IOException {
        int id = Integer.parseInt(request.getParameter("id"));
//        System.out.println(id);
        String goodsname = request.getParameter("goodsname");
        int classify = Integer.parseInt(request.getParameter("classify"));
        String details = goods.getDetails();
        float price = Float.parseFloat(request.getParameter("price"));
        int count = Integer.parseInt(request.getParameter("count"));
        String title = request.getParameter("title");

        goods.setId(id);
        goods.setGoodsname(goodsname);
        goods.setClassify(classify);
        goods.setDetails(details);
        goods.setPrice(price);
        goods.setCount(count);
        goods.setTitle(title);
        adminGoodsService.updateGoods(goods);

        //如果文件不为空，写入上传路径
        if (!goods.getPhoto().isEmpty()) {
            //上传文件名
            String fileName = goods.getPhoto().getOriginalFilename();
            if (fileName.endsWith(".jpg") || fileName.endsWith(".png")) {
                //上传文件路径
                String path = request.getServletContext().getRealPath("/upload");
                //获得文件的后缀名
                String suffix = fileName.substring(fileName.lastIndexOf("."));
                //生成新的文件名
                fileName = RandomUtil.getRandomFileName() + suffix;
                //获得文件路径
                File filepath = new File(path, fileName);
                if (!filepath.getParentFile().exists()) {
                    filepath.getParentFile().mkdirs();
                }
                //完成上传
                goods.getPhoto().transferTo(filepath);
//                System.out.println(filepath);
                //将文件名添加到Model中
                model.addAttribute("fileName", fileName);
//                System.out.println(fileName);
                goods.setImgpath("upload/"+fileName);
                adminGoodsService.updateGoods(goods);
//                return "show.jsp";
            }
        }
        return "redirect:/findGoods.do";
    }
}
