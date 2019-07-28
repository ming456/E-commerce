package com.neu.controller.Admin;

import com.neu.bean.Type;
import com.neu.service.AdminTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller
public class AdminTypeController {
    @Autowired
    AdminTypeService adminTypeService;

    /**
     * 查询所有分类
     * @param request
     * @return
     */
    @RequestMapping("/findType.do")
    public String findAllType(HttpServletRequest request){
        List<Type> list=adminTypeService.findAllType2();
        request.setAttribute("typeslist",list);
        return"admin/catalog_list.jsp";
    }

    /**
     * 根据Id删除分类
     * @param request
     * @return
     */
    @RequestMapping("/catelog/delete.do")
    public String remove(HttpServletRequest request){
        int id=Integer.parseInt(request.getParameter("id"));
        adminTypeService.delete(id);
        return "/findType.do";
    }

    /**
     * 去添加分类
     * @param request
     * @return
     */
    @RequestMapping("/toAdd.do")
    public String toAdd(HttpServletRequest request){
        List<Type> list=adminTypeService.findAllType2();
        System.out.println(list);
        request.setAttribute("typeslist",list);
        return "admin/catalog_add.jsp";
    }

    /**
     * 添加分类
     * @param request
     * @return
     */
    @RequestMapping("/add.do")
    public String add(HttpServletRequest request){
      String[]  typename=request.getParameterValues("typename");
      System.out.println(typename.length);
      String[]  parentid=request.getParameterValues("parentid");
      String[]  desciption=request.getParameterValues("desciption");
        List<Type> list = new ArrayList<Type>();
        for(int i=0;i<typename.length;i++){
            Type type=new Type();
            type.setTypename(typename[i]);
            type.setParentid(Integer.parseInt(parentid[i]));
            type.setDesciption(desciption[i]);
            list.add(type);
        }
        adminTypeService.add(list);
        return "/findType.do";

    }
}
