package com.cx.truck.web.controller;

import com.cx.truck.model.User;
import com.cx.truck.service.IUserService;
import com.cx.truck.web.controller.base.BaseController;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

import static com.cx.truck.web.controller.base.BaseController.USER;

@Controller
@RequestMapping(USER)
public class UserController extends BaseController<User> {

    //创建一个日志对象
    private Logger logger = Logger.getLogger(UserController.class);

    @Autowired
    private IUserService userService;

    /**
     * 登录
     *
     * @param user
     * @param request
     * @return
     */
    @RequestMapping(LOGIN)
    public String login(User user, HttpServletRequest request, Model model) {

        //request
        String serverCheckcode = (String) request.getSession().getAttribute("key");
        String clientCheckcode = request.getParameter("checkcode");
        if (serverCheckcode.equalsIgnoreCase(clientCheckcode)) {
            //2.调用service
            User loginUser = userService.login(user);
            //3.判断登录状态
            if (loginUser != null) {
                request.getSession().setAttribute("USER_SESSION", loginUser);
                logger.info("==========" + loginUser.getUsername() + ":登录成功===============");
                request.getSession().setAttribute("login_msg", "登录成功！");
                //request.setAttribute("login_msg", "登录成功！");
                //model.addAttribute("login_msg", "登录成功！");
                return HOME;
            } else {
                logger.warn("==============登录失败，用户名或密码不正确============");
                //model.addAttribute("login_msg", "登录失败，用户名或密码不正确！");
                request.getSession().setAttribute("login_msg", "登录失败，用户名或密码不正确！");
                //request.setAttribute("login_msg", "登录失败，用户名或密码不正确！");
                //model.addAttribute("login_msg", "登录失败，用户名或密码不正确！");
                return "redirect:/login.jsp";
            }
        } else {
            logger.warn("==============登录失败，验证码不正确============");
            //model.addAttribute("login_msg", "登录失败，验证码不正确！");
            request.getSession().setAttribute("login_msg", "登录失败，验证码不正确！");
            //request.setAttribute("login_msg", "登录失败，验证码不正确！");
            //model.addAttribute("login_msg", "登录失败，验证码不正确！");
            return "redirect:/login.jsp";
        }
    }

    @RequestMapping(LOGOUT)
    public String logout(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("USER_SESSION");
        logger.info("==========" + user.getUsername() + ":退出===============");
        //清除session
        request.getSession().invalidate();
        return "redirect:/index.jsp";
    }

    @RequestMapping("find")
    public String find(Integer id) {
        System.out.println("......");
        User user = userService.findById(id);
        System.out.println(user);
        return "home";
    }
}
