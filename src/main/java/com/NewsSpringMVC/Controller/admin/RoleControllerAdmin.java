package com.NewsSpringMVC.Controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "roleControllerOfAdmin")
public class RoleControllerAdmin extends BaseControllerAdmin {

    @RequestMapping(value = "/admin/listrole", method = RequestMethod.GET)
    public ModelAndView listRole() {
        String viewName = "admin/role/listrole";
        _mvShareAdmin.addObject("listRoleAdmin", _roleServiceAdmin.getDataRole());
        _mvShareAdmin.setViewName(viewName);
        return _mvShareAdmin;
    }

}
