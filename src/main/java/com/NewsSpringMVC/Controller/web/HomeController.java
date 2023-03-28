package com.NewsSpringMVC.Controller.web;

import com.NewsSpringMVC.Entity.User;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller(value = "homeControllerOfWeb")
public class HomeController extends BaseController {
    
    @RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
    public ModelAndView homePage(HttpSession session) {
        User user = (User) session.getAttribute("UserInfo");
        _mvShare.setViewName("web/home");
        _mvShare.addObject("UserInfo", user); // nếu user đăng nhập lấy thông tin
        _mvShare.addObject("listNewPostHome", postService.newPostCategory(4));
        return _mvShare;
    }


    @RequestMapping(value = "/error", method = RequestMethod.GET)
    public ModelAndView page404() {
         _mvShare.setViewName("404");
        return _mvShare;
    }           

}
