package com.NewsSpringMVC.Controller.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "postControllerOfWeb")
public class PostController extends BaseController {
    // Load thông tin tất cả bài viết của từng chuyển mục
   @RequestMapping(value = "/{slugPost}", method = RequestMethod.GET)
    public ModelAndView category(@PathVariable("slugPost") String slug) {
        _mvShare.setViewName("web/post");
        _mvShare.addObject("postDetail", postService.getPostDetail(slug));
        if(postService.getPostDetail(slug) == null){
           _mvShare.setViewName("redirect:/error");
        } 
      	return _mvShare;// Kế thừ từ BaseController
    }
    
}
