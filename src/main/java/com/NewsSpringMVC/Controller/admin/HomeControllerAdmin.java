package com.NewsSpringMVC.Controller.admin;

import com.NewsSpringMVC.Entity.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "homeControllerOfAdmin")
public class HomeControllerAdmin extends BaseControllerAdmin {

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public ModelAndView homePage() {
        String viewName = "admin/home";
        Anthention(viewName); // Phân quyền 
        return _mvShareAdmin;
    }
    
}
