package com.NewsSpringMVC.Controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.NewsSpringMVC.Entity.Category;
import com.NewsSpringMVC.Entity.Post;
import com.NewsSpringMVC.Entity.Role;

@Controller(value = "roleControllerOfAdmin")
public class RoleControllerAdmin extends BaseControllerAdmin {

    @RequestMapping(value = "/admin/listrole", method = RequestMethod.GET)
    public ModelAndView listRole() {
        String viewName = "admin/role/listrole";
        _mvShareAdmin.addObject("listRoleAdmin", _roleServiceAdmin.getDataRole());
        _mvShareAdmin.setViewName(viewName);
        return _mvShareAdmin;
    }
    
    @RequestMapping(value = "/admin/createrole", method = RequestMethod.GET)
    public ModelAndView CreateRole() {
        String viewName = "admin/role/createrole";
        _mvShareAdmin.setViewName(viewName);
        _mvShareAdmin.addObject("role", new Role());
      	return _mvShareAdmin;// Kế thừ từ BaseController
    }
    
    @RequestMapping(value = "/admin/createrole", method = RequestMethod.POST)
    public ModelAndView CreateRole(@ModelAttribute("role") Role role, BindingResult result) {
        ModelAndView mav = new ModelAndView("creatrole");
        // eidt post to database
        int count = _roleServiceAdmin.AddRole(role);
        if (count == 1) {
            // Sửa bài viết thành công
            mav.setViewName("redirect:/admin/listrole");
        } else {
            // Sửa bài viết thất bại
            mav.addObject("error", "Không thể sửa bài viết. Vui lòng thử lại sau.");
        }
        return mav;
    }
    
    @RequestMapping(value = "/admin/editrole/{id}", method = RequestMethod.GET)
	public ModelAndView editRole(@PathVariable("id") int id) {
		String viewName = "admin/role/editrole";
		_mvShareAdmin.addObject("roleDetail", _roleServiceAdmin.getRoleById(id));
		 
		_mvShareAdmin.setViewName(viewName);
		_mvShareAdmin.addObject("role", new Role());
		return _mvShareAdmin;// Kế thừ từ BaseController
	}

	@RequestMapping(value = "/admin/editrole/{id}", method = RequestMethod.POST)
	public ModelAndView EditRole(@ModelAttribute("role") Role role, BindingResult result) {
		ModelAndView mav = new ModelAndView("editrole");
		// eidt post to database
		int count = _roleServiceAdmin.UpdateRole(role);
		if (count == 1) {
			// Sửa bài viết thành công
			mav.setViewName("redirect:/admin/listrole");
		} else {
			// Sửa bài viết thất bại
			mav.addObject("error", "Không thể sửa bài viết. Vui lòng thử lại sau.");
		}
		return mav;
	}
    

}
