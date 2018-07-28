package com.offcn.controller;
import com.offcn.pojo.User;
import com.offcn.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("test")
public class Test {

    @Autowired
    UserService userService;

    @RequestMapping("demo01.do")
    public String demo01(User user, Model model) {
        List<User> list = userService.findU();

        model.addAttribute("list", list);
        if (user.getName() != null) {
            userService.insertU(user);
        }
        return "success";
    }

    @RequestMapping("de.do")
    @ResponseBody
    public String del(int id) {
        int i = userService.delUser(id);
        if (i > 0) {
            return "ok";
        } else {
            return "wrong";
        }
    }

    @RequestMapping("up.do")
    @ResponseBody
    public String up() {
        return "ok";
    }

    @RequestMapping("update.do")
    public String up2(User user) {
        userService.updateUser(user);
        return "redirect:demo01.do";
    }

    @RequestMapping("d.do")
    public String d(int id){
        userService.delUser(id);
        return "redirect:demo01.do";
    }

    @RequestMapping("u.do")
    public String u(int id,Model model){
        model.addAttribute("id",id);
        return "up";
    }
}