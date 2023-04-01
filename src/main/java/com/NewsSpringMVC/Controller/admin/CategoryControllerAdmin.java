package com.NewsSpringMVC.Controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "categoryControllerOfAdmin")
public class CategoryControllerAdmin extends BaseControllerAdmin {

    @RequestMapping(value = "/admin/listcategory", method = RequestMethod.GET)
    public ModelAndView listCategory() {
        String viewName = "admin/category/listcategory";
        _mvShareAdmin.addObject("listCategoryAdmin", _categoryServiceAdmin.getDataCategory());
        _mvShareAdmin.setViewName(viewName);
        return _mvShareAdmin;
    }
}
