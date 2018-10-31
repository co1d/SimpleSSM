package com.zplus.controller;

import com.zplus.pojo.User;
import com.zplus.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/user")
public class UserController 
{

    //注入service
    @Autowired
    private UserService userService;

    /*
     * 用户登录
     */
    @RequestMapping(value = "/login")
    public String login(@RequestParam String username,@RequestParam String password, Model model) 
    {
        User user = userService.login(username);
        if (user != null) 
        {
            if (user.getPassword().equals(password)) 
            {
                //登录成功
                return "page/home";
            } else 
            {
                model.addAttribute("message", "登录失败");
                return "page/loginInfo";
            }
        } else 
        {
            model.addAttribute("message", "你输入的用户名或密码有误");
            return "page/loginInfo";
        }
    }

    /*
     * 回到登录页
     */
    @RequestMapping(value="/index")
    public String index()
    {
        return "index";
    }
}
