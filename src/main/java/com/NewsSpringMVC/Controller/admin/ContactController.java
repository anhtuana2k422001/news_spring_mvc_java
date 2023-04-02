package com.NewsSpringMVC.Controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "contactControllerOfAdmin")
public class ContactController extends BaseControllerAdmin{
	@RequestMapping(value = "/admin/listcontact", method = RequestMethod.GET)
    public ModelAndView listContact() {
        String viewName = "admin/contact/listcontact";
        _mvShareAdmin.addObject("listContactAdmin", _contactServiceAdmin.getDataContact());
        Anthention(viewName); // Phân quyền
        return _mvShareAdmin;
    }
}
