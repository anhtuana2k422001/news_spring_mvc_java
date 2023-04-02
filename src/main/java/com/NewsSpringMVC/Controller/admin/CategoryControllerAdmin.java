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

@Controller(value = "categoryControllerOfAdmin")
public class CategoryControllerAdmin extends BaseControllerAdmin {

    @RequestMapping(value = "/admin/listcategory", method = RequestMethod.GET)
    public ModelAndView listCategory() {
        String viewName = "admin/category/listcategory";
        _mvShareAdmin.addObject("listCategoryAdmin", _categoryServiceAdmin.getDataCategory());
        _mvShareAdmin.setViewName(viewName);
        return _mvShareAdmin;
    }
    
    @RequestMapping(value = "/admin/createcategory", method = RequestMethod.GET)
    public ModelAndView CreateCategory() {
        String viewName = "admin/category/createcategory";
        _mvShareAdmin.setViewName(viewName);
        _mvShareAdmin.addObject("category", new Category());
      	return _mvShareAdmin;// Kế thừ từ BaseController
    }
    
    @RequestMapping(value = "/admin/createcategory", method = RequestMethod.POST)
    public ModelAndView CreateCategory(@ModelAttribute("category") Category category, BindingResult result) {
        ModelAndView mav = new ModelAndView("createcategory");
         
        int count = _categoryServiceAdmin.AddCategory(category);
        if (count == 1) {
            // Sửa bài viết thành công
            mav.setViewName("redirect:/admin/listcategory");
        } else {
            // Sửa bài viết thất bại
            mav.addObject("error", "Không thể sửa danh muc. Vui lòng thử lại sau.");
        }
        return mav;
    }
    
    @RequestMapping(value = "/admin/editcategory/{id}", method = RequestMethod.GET)
	public ModelAndView editCategory(@PathVariable("id") int id) {
		String viewName = "admin/category/editcategory";
		_mvShareAdmin.addObject("categoryDetail", _categoryServiceAdmin.getCategoryById(id));
		 
		_mvShareAdmin.setViewName(viewName);
		_mvShareAdmin.addObject("category", new Category());
		return _mvShareAdmin;// Kế thừ từ BaseController
	}

	@RequestMapping(value = "/admin/editcategory/{id}", method = RequestMethod.POST)
	public ModelAndView EditCategory(@ModelAttribute("category") Category category, BindingResult result) {
		ModelAndView mav = new ModelAndView("editcategory");
		// eidt post to database
		int count = _categoryServiceAdmin.UpdateCategory(category);
		if (count == 1) {
			// Sửa bài viết thành công
			mav.setViewName("redirect:/admin/listcategory");
		} else {
			// Sửa bài viết thất bại
			mav.addObject("error", "Không thể sửa bài viết. Vui lòng thử lại sau.");
		}
		return mav;
	}
}
