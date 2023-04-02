package com.NewsSpringMVC.Controller.web;

import com.NewsSpringMVC.Entity.Comment;
import com.NewsSpringMVC.Entity.Post;
import com.NewsSpringMVC.Entity.User;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "commentControllerOfWeb")
public class CommentController extends BaseController {

    @RequestMapping(value = "/{slugPost}", method = RequestMethod.POST)
    public ModelAndView AddComment(HttpSession session,
            @PathVariable("slugPost") String slug,
            @RequestParam("the_comment") String commentContent) {
        Post postDetail = postService.getPostDetail(slug);
        if (postDetail == null) {
            _mvShare.setViewName("redirect:/error");
            return _mvShare;
        }
        // Lấy ID người đăng nhập 
        User user = (User) session.getAttribute("UserLogin");
        
        // Tạo bình luận mới
        Comment comment = new Comment();
        comment.setThe_comment(commentContent);
        comment.setPost_id(postDetail.getId());
        comment.setUser_id(user.getId());
        int count = commentService.AddComment(comment);
        if (count == 1) {
            // Tạo tài khoản thành công
            return new ModelAndView("redirect:/" + slug + "#comments_all");
        } else {
            // Tạo tài khoản thất bại
            return new ModelAndView("redirect:/error");
        }
    }

}
