package com.NewsSpringMVC.Controller.admin;

import com.NewsSpringMVC.Entity.Comment;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller(value = "commentControllerOfAdmin")
public class CommentController extends BaseControllerAdmin{
	@RequestMapping(value = "/admin/listcomment", method = RequestMethod.GET)
    public ModelAndView listComment() {
        String viewName = "admin/comment/listcomment";
        _mvShareAdmin.addObject("listCommentAdmin", _commentServiceAdmin.getDataComment());
         Anthention(viewName); // Phân quyền
        return _mvShareAdmin;
    }
	
	@RequestMapping(value = "/admin/editcomment/{id}", method = RequestMethod.GET)
	public ModelAndView editComment(@PathVariable("id") int id) {
		String viewName = "admin/comment/editcomment";
		_mvShareAdmin.addObject("commentDetail", _commentServiceAdmin.getCommentById(id));
		 Anthention(viewName); // Phân quyền
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
