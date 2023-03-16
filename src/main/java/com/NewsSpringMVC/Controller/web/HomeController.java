package com.NewsSpringMVC.Controller.web;

import com.NewsSpringMVC.Dao.UserDao;
import com.NewsSpringMVC.Entity.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value="homeControllerOfWeb")
public class HomeController {
    @Autowired
    private UserDao userDao;

	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {
		List<User> userList = userDao.getDataList();
	    ModelAndView mav = new ModelAndView("web/home");
        mav.addObject("listUsers", userList);
	    return mav;
	}
        
    // Controller đăng nhập cho người dùng và quản trị viên
        @RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView("login");
		return mav;
	}
        
}