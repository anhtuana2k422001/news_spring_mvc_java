package com.NewsSpringMVC.Controller.web;

import com.NewsSpringMVC.Service.web.HomeServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "homeControllerOfWeb")
public class HomeController {

    @Autowired
    HomeServiceImpl homeService;
    //@Autowired
    //CategoryServiceImpl categoryService;

    @RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
    public ModelAndView homePage() {
        ModelAndView mav = new ModelAndView("web/home");
        mav.addObject("listCategory", homeService.getDataCategory());
        return mav;
    }

    @RequestMapping(value = "/post", method = RequestMethod.GET)
    public ModelAndView post() {
        ModelAndView mav = new ModelAndView("web/post");
        mav.addObject("listCategory", homeService.getDataCategory());
        return mav;
    }

    @RequestMapping(value = "/404", method = RequestMethod.GET)
    public ModelAndView page404() {
        ModelAndView mav = new ModelAndView("404");
        mav.addObject("listCategory", homeService.getDataCategory());
        return mav;
    }

}
