package com.NewsSpringMVC.Controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.NewsSpringMVC.Service.admin.ImageServiceImplAdmin;

@Controller(value = "userControllerOfAdmin")
public class UserController extends BaseControllerAdmin{
	 @Autowired
	    ImageServiceImplAdmin _imageServiceAdmin;
	@RequestMapping(value = "/admin/listuser", method = RequestMethod.GET)
    public ModelAndView listUser() {
        String viewName = "admin/user/listuser";
        _mvShareAdmin.addObject("listUserAdmin", _userServiceAdmin.getDataUser());
        _mvShareAdmin.setViewName(viewName);
        return _mvShareAdmin;
    }
	
	@ModelAttribute("imageServiceAdmin")
    public ImageServiceImplAdmin imageAdminService() {
        return _imageServiceAdmin;
    }
}
