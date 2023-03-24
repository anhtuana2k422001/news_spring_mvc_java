package com.NewsSpringMVC.Controller.web;

import com.NewsSpringMVC.Entity.User;
import com.NewsSpringMVC.Service.web.UserServiceImpl;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {

    @Autowired
    UserServiceImpl UserService;

    @RequestMapping(value = "/dang-nhap", method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView mav = new ModelAndView("login");
        mav.addObject("user", new User()); // thêm đối tượng user vào ModelAndView
        return mav;
    }

    /* Controller đăng nhập cho người dùng và quản trị viên */
    @RequestMapping(value = "/dang-nhap", method = RequestMethod.POST)
    public ModelAndView loginUser(HttpSession session, @ModelAttribute("user") User user) {
        ModelAndView mav = new ModelAndView();
        // Kiểm tra email đã được sử dụng hay chưa
        if (UserService.isEmailAlreadyInUse(user.getEmail())) {
            // Kiểm tra thông tin đăng nhập tài khoản 
            boolean check = UserService.CheckAcount(user);
            if (check) {
                User userlogin = UserService.UserLogin(user);
                mav.setViewName("redirect:/trang-chu");
                session.setAttribute("UserLogin", userlogin);
            } else {
                mav.setViewName("login");
                mav.addObject("statusPassword", "Mật khẩu không chính xác!");
            }
        }else {
             mav.setViewName("login");
             mav.addObject("statusEmail", "Không tìm thấy tài khoản email!");
        }
        return mav;
    }

    @RequestMapping(value = "/dang-ky", method = RequestMethod.GET)
    public ModelAndView resgister() {
        ModelAndView mav = new ModelAndView("register");
        mav.addObject("user", new User());
        return mav;
    }

    @RequestMapping(value = "/dang-ky", method = RequestMethod.POST)
    public ModelAndView CreateAcc(HttpSession session, @ModelAttribute("user") User user, BindingResult result) {
        ModelAndView mav = new ModelAndView("register");

        // check if email is already in use
        if (UserService.isEmailAlreadyInUse(user.getEmail())) {
            mav.addObject("errorInUseEmail", "Địa chỉ email này đã được sử dụng!");
            return mav;
        }
        
        // Kiểm tra password
        if(!user.getPassword().equals(user.getPassword_confirm())){
            mav.addObject("errorPassword", "Mật khẩu xác nhận không trùng khớp!");
            return mav;
        }
        
        if (!user.getPassword().matches("^(?=.*[a-zA-Z])(?=.*[0-9]).+$")) {
            mav.addObject("errorPassSecurity", "Mật khẩu phải chứa ít nhất một chữ cái và một số!");
            return mav;
        }
        
        if (user.getPassword().length() < 6) {
            mav.addObject("errorPassLength", "Mật khẩu phải có độ dài tối thiểu là 6 ký tự!");
            return mav;
        }

        // add user to database
        int count = UserService.AddAcount(user);
        if (count == 1) {
            // Tạo tài khoản thành công
            session.setAttribute("UserLogin", user);
            mav.setViewName("redirect:/trang-chu");
        } else {
            // Tạo tài khoản thất bại
            mav.addObject("error", "Không thể tạo tài khoản. Vui lòng thử lại sau.");
        }
        return mav;
    }

// Đăng xuất user
    @RequestMapping(value = "/dang-xuat", method = RequestMethod.GET)
    public String logoutUser(HttpSession session, HttpServletRequest request) {
        session.removeAttribute("UserLogin");
        return "redirect:" + request.getHeader("Referer");
    }

}
