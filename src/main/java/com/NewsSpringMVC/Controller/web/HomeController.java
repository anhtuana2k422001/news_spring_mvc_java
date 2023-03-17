package com.NewsSpringMVC.Controller.web;
import com.NewsSpringMVC.Service.web.CategoryServiceImpl;
import com.NewsSpringMVC.Service.web.HomeServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value="homeControllerOfWeb")
public class HomeController {
        @Autowired
        HomeServiceImpl homeService;
//        @Autowired
//        CategoryServiceImpl categoryService;

	@RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
	public ModelAndView homePage() {
	    ModelAndView mav = new ModelAndView("web/home");
	 	mav.addObject("listUsers", homeService.getDataUser());  	 	mav.addObject("listUsers", homeService.getDataUser());  
                mav.addObject("listCategory", homeService.getDataCategory());  

	    return mav;
	}
        
    /* Controller đăng nhập cho người dùng và quản trị viên */
    @RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
	public ModelAndView loginPage() {
		ModelAndView mav = new ModelAndView("login");
//                mav.addObject("listCates", categoryService.getDataCategory()); 
		return mav;
    }
        
        @RequestMapping(value = "/404", method = RequestMethod.GET)
	public ModelAndView page404() {
            ModelAndView mav = new ModelAndView("404");
            mav.addObject("listCategory", homeService.getDataCategory());  
            return mav;
	}
        
}