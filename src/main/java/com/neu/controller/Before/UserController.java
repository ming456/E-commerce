package com.neu.controller.Before;

import com.neu.bean.User;
import com.neu.service.UserService;
import org.aspectj.weaver.ast.Var;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 用户注册
     * @param request
     * @return
     * @throws ParseException
     */
    @RequestMapping("/addUser.do")
    public String addUser(HttpServletRequest request,HttpSession session) throws ParseException {
        String userName = request.getParameter("userName");
        String password = request.getParameter("bpwd");
        String tipsQuestion = request.getParameter("tipsQuestion");
        String tipsAnswer = request.getParameter("tipsAnswer");
        String realName = request.getParameter("realName");
        String card = request.getParameter("card");
        String email = request.getParameter("email");
        String birthday = request.getParameter("birthday");
        String sex = request.getParameter("sex");
        String co=request.getParameter("code");
        String cod= (String) session.getAttribute("code");
        if (co.equals(cod)) {
            User user = new User();
            user.setUsername(userName);
            user.setPassword(password);
            user.setTipsquestion(tipsQuestion);
            user.setTipsanswer(tipsAnswer);
            user.setRealname(realName);
            user.setCard(card);
            user.setEmail(email);
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            Date date = sdf.parse(birthday);
            user.setBirthday(date);
            user.setSex(sex);
            user.setCreatetime(new Date());
            userService.addUser(user);
            return "before/userlogin.jsp";
        }
        else{
            session.setAttribute("message3","验证码错误");
        }
        return "before/register.jsp";
    }

    /**
     * 用户登录
     * @param request
     * @param session
     * @return
     */
    @RequestMapping("/loginUser.do")
    public String loginUser(HttpServletRequest request ,HttpSession session)  {
        String userName = request.getParameter("userName");
        String password = request.getParameter("password");
        String co=request.getParameter("code");
        String cod= (String) session.getAttribute("code");
        if (co.equals(cod)) {
            User user = userService.findUserByNick(userName);
            //是否有该用户
            if (user == null) {
                session.setAttribute("message2","该用户不存在");
                return "before/userloginwrong.jsp";
            }
            String psw = user.getPassword();
            //密码正确
            if (psw.equals(password)) {
                session.setMaxInactiveInterval(30*60);
                session.setAttribute("user",user);
                return "forward:/Browse.do";
            }
            session.setAttribute("message2","密码错误");
        }
        else{
            session.setAttribute("message2","验证码错误");
        }
        return "before/userloginwrong.jsp";
    }

    /**
     * 找回密码1
     * @param request
     * @param session
     * @return
     */
    @RequestMapping("/findUserone.do")
    public String foudUser(HttpServletRequest request,HttpSession session){
        String userName = request.getParameter("userName");
        String tipsQuestion = request.getParameter("tipsQuestion");
        String tipsAnswer = request.getParameter("tipsAnswer");
        String co=request.getParameter("code");
        String cod= (String) session.getAttribute("code");
        if (co.equals(cod)) {
            User user = userService.findUserByNick(userName);
            //是否有该用户
            if (user == null) {
                session.setAttribute("message", "该用户不存在");
                return "before/findpassword.jsp";
            }
            String tip = user.getTipsanswer();
            if (tip.equals(tipsAnswer)) {
                session.setAttribute("userName", userName);
                return "/before/findpassword2.jsp";
            } else {
                session.setAttribute("message", "答案错误");
            }
            return "before/findpassword.jsp";
        }
        else{
            session.setAttribute("message","验证码错误");
        }
        return "before/findpassword.jsp";
    }

    /**
     * 修改密码
     * @param request
     * @param session
     * @return
     */
    @RequestMapping("/findUser2.do")
    public String foudUser2(HttpServletRequest request,HttpSession session){
       String username= (String) session.getAttribute("userName");
       String password = request.getParameter("bpwd");
       String password2=request.getParameter("rebpwd");
       if (password.equals(password2) && password!=""){
           userService.modifypassword(username,password);
           return "forward:/Browse.do";
       }
       else if (!password.equals(password2)){
           session.setAttribute("message1","两次密码不一致！");
       }
       else {
           session.setAttribute("message1","密码不能为空！");
       }
        return "before/findpassword2.jsp";
    }

    /**
     * 退出登录
     * @param session
     * @return
     */
    @RequestMapping("/userlogout.do")
    public String logOut(HttpSession session){
        session.removeAttribute("userName");
        return "forward:/Browse.do";
    }

    /**
     * 用户唯一性校验
     * @param request
     * @param response
     * @throws IOException
     */
    @RequestMapping("/checkUserNameServlet.do")
    public void doRegister(HttpServletRequest request,HttpServletResponse response) throws IOException {
        String username = request.getParameter("userName");
        PrintWriter out = response.getWriter();
        if (userService.findUserByNick2(username)) {
            response.getWriter().println("1");
        } else {
            response.getWriter().println("0");
        }
    }
    @RequestMapping("/checkcode.do")
    public void checkCode(HttpServletRequest request,HttpServletResponse response,HttpSession session) throws IOException {
        String cod = request.getParameter("code");
        PrintWriter out = response.getWriter();
        String co= (String) session.getAttribute("code");
        if (co.equals(cod)) {
            response.getWriter().println("1");
        } else {
            response.getWriter().println("0");
        }
    }
}
