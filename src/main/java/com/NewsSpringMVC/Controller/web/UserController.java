package com.NewsSpringMVC.Controller.web;

import com.NewsSpringMVC.Entity.User;
import com.NewsSpringMVC.Service.web.HomeServiceImpl;
import com.NewsSpringMVC.Service.web.UserServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
    @Autowired
    HomeServiceImpl homeService;
    @Autowired
    UserServiceImpl UserService;
    
    @RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView mav = new ModelAndView("login");
        mav.addObject("listUser", homeService.getDataUser());
        mav.addObject("user", new User()); // thêm đối tượng user vào ModelAndView
        return mav;
    }

    
    /* Controller đăng nhập cho người dùng và quản trị viên */
    @RequestMapping(value = "/dang-nhap", method = RequestMethod.POST)
    public ModelAndView loginUser(@ModelAttribute("user") User user) {
        ModelAndView mav = new ModelAndView();
        boolean check = UserService.CheckAcount(user);
        if(check) {
            mav.addObject("statusLogin", "Đăng nhập thành công !");
            mav.setViewName("redirect:/trang-chu");
        
        }else {
        	mav.addObject("statusLogin", "Đăng nhập thất bại !");
        	mav.setViewName("redirect:/trang-chu");   
        }
        //để xóa sạch các giá trị đã nhập trước đó.
        mav.addObject("user", new User()); // Thêm đối tượng 'user' vào Model
        return mav;
    }

}
