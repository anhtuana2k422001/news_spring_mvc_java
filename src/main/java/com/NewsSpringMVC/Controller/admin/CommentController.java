package com.NewsSpringMVC.Controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "commentControllerOfAdmin")
public class CommentController extends BaseControllerAdmin{
	@RequestMapping(value = "/admin/listcomment", method = RequestMethod.GET)
    public ModelAndView listComment() {
        String viewName = "admin/comment/listcomment";
        _mvShareAdmin.addObject("listCommentAdmin", _commentServiceAdmin.getDataComment());
        _mvShareAdmin.setViewName(viewName);
        return _mvShareAdmin;
    }
}
