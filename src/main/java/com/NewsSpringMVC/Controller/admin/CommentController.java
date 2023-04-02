package com.NewsSpringMVC.Controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.NewsSpringMVC.Entity.Category;
import com.NewsSpringMVC.Entity.Comment;
import com.NewsSpringMVC.Entity.Image;

@Controller(value = "commentControllerOfAdmin")
public class CommentController extends BaseControllerAdmin{
	@RequestMapping(value = "/admin/listcomment", method = RequestMethod.GET)
    public ModelAndView listComment() {
        String viewName = "admin/comment/listcomment";
        _mvShareAdmin.addObject("listCommentAdmin", _commentServiceAdmin.getDataComment());
        _mvShareAdmin.setViewName(viewName);
        return _mvShareAdmin;
    }
	
	@RequestMapping(value = "/admin/editcomment/{id}", method = RequestMethod.GET)
	public ModelAndView editComment(@PathVariable("id") int id) {
		String viewName = "admin/comment/editcomment";
		_mvShareAdmin.addObject("commentDetail", _commentServiceAdmin.getCommentById(id));
		 
		_mvShareAdmin.setViewName(viewName);
		_mvShareAdmin.addObject("comment", new Comment());
		return _mvShareAdmin;// Kế thừ từ BaseController
	}

	@RequestMapping(value = "/admin/editcomment/{id}", method = RequestMethod.POST)
	public ModelAndView EditComment(@ModelAttribute("comment") Comment comment, 
			 
			BindingResult result) {
		ModelAndView mav = new ModelAndView("editcomment");
		// eidt post to database
				int count = _commentServiceAdmin.UpdateComment(comment);
				if (count == 1) {
					// Sửa bài viết thành công
					mav.setViewName("redirect:/admin/listcomment");
				} else {
					// Sửa bài viết thất bại
					mav.addObject("error", "Không thể sửa bài viết. Vui lòng thử lại sau.");
				}
				return mav;
	}
}
