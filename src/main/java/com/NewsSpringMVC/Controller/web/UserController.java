package com.NewsSpringMVC.Controller.web;

import com.NewsSpringMVC.Entity.User;
import com.NewsSpringMVC.Service.web.HomeServiceImpl;
import com.NewsSpringMVC.Service.web.UserServiceImpl;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
    @Autowired
    UserServiceImpl UserService;
    
    @RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView mav = new ModelAndView("login");
        mav.addObject("user", new User()); // thêm đối tượng user vào ModelAndView
        return mav;
    }

    
    /* Controller đăng nhập cho người dùng và quản trị viên */
    @RequestMapping(value = "/dang-nhap", method = RequestMethod.POST)
    public ModelAndView loginUser( HttpSession session, @ModelAttribute("user") User user) {
        ModelAndView mav = new ModelAndView();
        boolean check = UserService.CheckAcount(user);
        User userlogin = UserService.UserLogin(user);
        if(check) {
            mav.setViewName("redirect:/trang-chu");
            session.setAttribute("UserLogin", userlogin);
        }else {
            mav.setViewName("login");
            mav.addObject("statusLogin", "Incorrect account or password");  
        }
        return mav;
    }
    
    @RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
    public ModelAndView resgister() {
       ModelAndView mav = new ModelAndView("register");
        mav.addObject("user", new User()); 
        return mav;
    }
    
     @RequestMapping(value = "/dang-ky", method = RequestMethod.POST)
    public ModelAndView resgisterUser( HttpSession session, @ModelAttribute("user") User user) {
        ModelAndView mav = new ModelAndView();
        boolean check = UserService.CheckAcount(user);
        User userlogin = UserService.UserLogin(user);
        if(check) {
            mav.setViewName("redirect:/trang-chu");
        }else {
            mav.setViewName("login");
        }
        return mav;
    }
    
    // Đăng xuất user
    @RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
    public String logoutUser( HttpSession session, HttpServletRequest request) {
        session.removeAttribute("UserLogin");
        return "redirect:" + request.getHeader("Referer");
    }
    
    
    

}
