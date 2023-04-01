package com.NewsSpringMVC.Controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller(value = "postControllerOfAdmin")
public class PostControllerAdmin extends BaseControllerAdmin {

    @RequestMapping(value = "/admin/listpost", method = RequestMethod.GET)
    public ModelAndView listPost() {
        String viewName = "admin/post/listpost";
        _mvShareAdmin.addObject("listPostAdmin", _postServiceAdmin.getDataPost());
        _mvShareAdmin.setViewName(viewName);
        return _mvShareAdmin;
    }

    @RequestMapping(value = "/admin/editpost/{id}", method = RequestMethod.GET)
    public ModelAndView editPost(@PathVariable("id") int id) {
        String viewName = "admin/post/editpost";
        _mvShareAdmin.addObject("editPost", _postServiceAdmin.getPostById(id));
        _mvShareAdmin.setViewName(viewName);
        return _mvShareAdmin;
    }

}
