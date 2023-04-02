package com.NewsSpringMVC.Controller.web;

import com.NewsSpringMVC.Entity.Category;
import com.NewsSpringMVC.Entity.Post;
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
        Post postDetail = postService.getPostDetail(slug);
         if( postDetail == null) {
            _mvShare.setViewName("redirect:/error");
             return _mvShare;
        }   
        _mvShare.addObject("postDetail", postDetail);
        Category idCate = categoryService.getCategoryById(postDetail.getCategory_id());
        // Lấy bài viết theo theo cùng danh mục để load lên postDetail
        _mvShare.addObject("listPostTheSame", postService.listPostCategory(idCate.getId()));
            
        return _mvShare;// Kế thừ từ BaseController
    }
    
}
