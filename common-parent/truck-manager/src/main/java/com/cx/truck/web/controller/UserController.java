package com.cx.truck.web.controller;

import com.cx.truck.model.User;
import com.cx.truck.service.IUserService;
import com.cx.truck.web.controller.base.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

import static com.cx.truck.web.controller.base.BaseController.USER;

@Controller
@RequestMapping(USER)
public class UserController extends BaseController<User> {

    @Autowired
    private IUserService userService;

    /**
     * 登录
     * @param user
     * @param request
     * @return
     */
    @RequestMapping(LOGIN)
    public String login(User user, HttpServletRequest request) {

        //request
        String serverCheckcode = (String) request.getSession().getAttribute("key");
        String clientCheckcode = request.getParameter("checkcode");
        if (serverCheckcode.equalsIgnoreCase(clientCheckcode)) {
            //2.调用service
            User loginUser = userService.login(user);
            //3.判断登录状态
            if (loginUser != null) {
                System.out.println("登录成功！");
                request.getSession().setAttribute("USER_SESSION", loginUser);
                return HOME;
            } else {
                System.out.println("登录失败，用户名或密码不正确！");
                return "redirect:/login.jsp";
            }
        } else {
            System.out.println("验证码不正确!");
            return "redirect:/login.jsp";
        }
    }

    @RequestMapping(LOGOUT)
    public String logout(HttpServletRequest request){
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
