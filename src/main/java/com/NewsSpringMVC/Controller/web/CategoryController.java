package com.NewsSpringMVC.Controller.web;

import com.NewsSpringMVC.Entity.Category;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "categoryControllerOfWeb")
public class CategoryController extends BaseController {

    // Load thông tin tất cả bài viết của từng chuyển mục
    @RequestMapping(value = "/chuyen-muc/{slug}", method = RequestMethod.GET)
    public ModelAndView category(@PathVariable("slug") String slug) {
        _mvShare.setViewName("web/categorypost");
        Category cate = categoryService.getCategoryBySlug(slug);
        if (cate == null) {
            _mvShare.setViewName("redirect:/error");
        } else {
            _mvShare.addObject("categoryName", cate.getName());
            _mvShare.addObject("listPostCate", postService.listPostCategory(cate.getId()));
        }
        return _mvShare;
    }

    // Load thông tin tất cả danh mục
    @RequestMapping(value = "/tat-ca-chuyen-muc", method = RequestMethod.GET)
    public ModelAndView category() {
        _mvShare.setViewName("web/categorypost_all");
        return _mvShare;
    }

}
