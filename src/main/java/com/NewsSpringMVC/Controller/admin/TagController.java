package com.NewsSpringMVC.Controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "tagControllerOfAdmin")
public class TagController extends BaseControllerAdmin{
	@RequestMapping(value = "/admin/listtag", method = RequestMethod.GET)
    public ModelAndView listTag() {
        String viewName = "admin/tag/listtag";
        _mvShareAdmin.addObject("listTagAdmin", _tagServiceAdmin.getDataTag());
        _mvShareAdmin.setViewName(viewName);
        return _mvShareAdmin;
    }
}
