package com.NewsSpringMVC.Controller.admin;

import com.NewsSpringMVC.Entity.User;
import com.NewsSpringMVC.Service.admin.CategoryServiceImplAdmin;
import com.NewsSpringMVC.Service.admin.CommentServiceImplAdmin;
import com.NewsSpringMVC.Service.admin.ContactServiceImplAdmin;
import com.NewsSpringMVC.Service.admin.ImageServiceImplAdmin;
import com.NewsSpringMVC.Service.admin.PostServiceImplAdmin;
import com.NewsSpringMVC.Service.admin.RoleServiceImplAdmin;
import com.NewsSpringMVC.Service.admin.TagServiceImplAdmin;
import com.NewsSpringMVC.Service.admin.UserServiceImplAdmin;

import javax.annotation.PostConstruct;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.web.bind.annotation.ModelAttribute;

@Controller(value = "baseControllerOfAdmin")
public class BaseControllerAdmin {

    @Autowired
    CategoryServiceImplAdmin _categoryServiceAdmin;
    @Autowired
    UserServiceImplAdmin _userServiceAdmin;
    @Autowired
    PostServiceImplAdmin _postServiceAdmin;
    @Autowired
    RoleServiceImplAdmin _roleServiceAdmin;
    @Autowired
    TagServiceImplAdmin _tagServiceAdmin;
    @Autowired
    CommentServiceImplAdmin _commentServiceAdmin;
    @Autowired
    ImageServiceImplAdmin _imageServiceAdmin;
    @Autowired
    ContactServiceImplAdmin _contactServiceAdmin;

    public ModelAndView _mvShareAdmin = new ModelAndView();
    
    @Autowired
    HttpSession session;
    
    @PostConstruct
    public void Init() {
        // Có thể khởi tạo comment để thừa kế tất cả controller load lên Nav
    }

    @ModelAttribute("userServiceAdmin")
    public UserServiceImplAdmin userServiceAdmin() {
        return _userServiceAdmin;
    }

    @ModelAttribute("categoryServiceAdmin")
    public CategoryServiceImplAdmin categoryAdminService() {
        return _categoryServiceAdmin;
    }

    @ModelAttribute("postAdminService")
    public PostServiceImplAdmin postAdminService() {
        return _postServiceAdmin;
    }
    
    @ModelAttribute("tagAdminService")
    public TagServiceImplAdmin tagAdminService() {
        return _tagServiceAdmin;
    }
    
    @ModelAttribute("commentAdminService")
    public CommentServiceImplAdmin commentAdminService() {
        return _commentServiceAdmin;
    }
    @ModelAttribute("imageServiceAdmin")
    public ImageServiceImplAdmin imageAdminService() {
        return _imageServiceAdmin;
    }
    
    @ModelAttribute("contactServiceAdmin")
    public ContactServiceImplAdmin contactAdminService() {
        return _contactServiceAdmin;
    }
    
    @ModelAttribute("userLogin")
    public User getUserLogin() {
        return (User) session.getAttribute("UserLogin");
    }
    
    // Phân quyền người dùng
    public void Anthention(String view) {
        User user = getUserLogin();
        if (user != null) {
            if (user.getRole_id() == 1) 
                _mvShareAdmin.setViewName("redirect:/error");
            else
                _mvShareAdmin.setViewName(view);
        } else {
            _mvShareAdmin.setViewName("redirect:/error");
        }
    }
   

}
