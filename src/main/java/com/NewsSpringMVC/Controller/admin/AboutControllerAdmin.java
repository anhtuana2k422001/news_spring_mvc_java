package com.NewsSpringMVC.Controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "aboutControllerOfAdmin")
public class AboutControllerAdmin extends BaseControllerAdmin{
	// trang giới thiệu
    @RequestMapping(value = "/admin/about", method = RequestMethod.GET)
    public ModelAndView aboutPage() {
        String viewName = "admin/about/about";
        _mvShareAdmin.addObject("aboutPage", _aboutServiceAdmin.getDataAbout());
        Anthention(viewName); // Phân quyền 
        return _mvShareAdmin;
    }
}
