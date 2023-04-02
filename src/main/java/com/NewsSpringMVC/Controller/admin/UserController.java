package com.NewsSpringMVC.Controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.NewsSpringMVC.Entity.Post;
import com.NewsSpringMVC.Entity.Role;
import com.NewsSpringMVC.Entity.User;
import com.NewsSpringMVC.Service.admin.ImageServiceImplAdmin;

@Controller(value = "userControllerOfAdmin")
public class UserController extends BaseControllerAdmin{
	 
	@RequestMapping(value = "/admin/listuser", method = RequestMethod.GET)
    public ModelAndView listUser() {
        String viewName = "admin/user/listuser";
        _mvShareAdmin.addObject("listUserAdmin", _userServiceAdmin.getDataUser());
        _mvShareAdmin.setViewName(viewName);
        return _mvShareAdmin;
    }
	@RequestMapping(value = "/admin/createuser", method = RequestMethod.GET)
    public ModelAndView CreateUser() {
        String viewName = "admin/user/createuser";
        _mvShareAdmin.setViewName(viewName);
        _mvShareAdmin.addObject("user", new User());
      	return _mvShareAdmin; 
    }
    
    @RequestMapping(value = "/admin/createuser", method = RequestMethod.POST)
    public ModelAndView CreateUser(@ModelAttribute("user") User user, BindingResult result) {
        ModelAndView mav = new ModelAndView("createuser");
     // check if email is already in use
        if (_userServiceAdmin.isEmailAlreadyInUse(user.getEmail())) {
            mav.addObject("errorInUseEmail", "Địa chỉ email này đã được sử dụng!");
            return mav;
        } 
        // add user to database
        int count = _userServiceAdmin.AddAccount(user);
        if (count == 1) {
            // Tạo tài khoản thành công
           
            mav.setViewName("redirect:/admin/listuser");
        } else {
            // Tạo tài khoản thất bại
            mav.addObject("error", "Không thể tạo tài khoản. Vui lòng thử lại sau.");
        }
        return mav;
    }
	
}
