package com.NewsSpringMVC.Controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.NewsSpringMVC.Service.admin.RoleAdminServiceImpl;

@Controller(value="roleControllerOfAdmin")
public class RoleController {
	
	@Autowired
    RoleAdminServiceImpl  roleAdminService;
	
	@RequestMapping(value = "/admin/listrole", method = RequestMethod.GET)
	public ModelAndView listRole() {
	      ModelAndView mav = new ModelAndView("admin/role/listrole");
	      mav.addObject("listRoleAdmin", roleAdminService.getDataRole());
	      return mav;
	}
	
    @ModelAttribute("roleAdminService")
    public RoleAdminServiceImpl roleAdminService() {
        return roleAdminService;
    }
}
