package com.NewsSpringMVC.Controller.web;

import com.NewsSpringMVC.Entity.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController extends BaseController {

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
        if (userService.isEmailAlreadyInUse(user.getEmail())) {
            // Kiểm tra thông tin đăng nhập tài khoản 
            boolean check = userService.CheckAcount(user);
            if (check) {
                User userlogin = userService.UserLogin(user);
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
        if (userService.isEmailAlreadyInUse(user.getEmail())) {
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
        int count = userService.AddAcount(user);
        if (count == 1) {
            // Tạo tài khoản thành công
            User userlogin = userService.UserLogin(user);
            session.setAttribute("UserLogin", userlogin);
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
    
    // Thông tin tài khoản cá nhân 
    @RequestMapping(value = "/tai-khoan-cua-toi", method = RequestMethod.GET)
    public ModelAndView infoUser(HttpSession session) {
        User user = (User) session.getAttribute("UserLogin");
        if(user == null)
            return new ModelAndView("redirect:/error");
        _mvShare.setViewName("web/profile");
        return _mvShare;
    }
    
    // Thông tin tài khoản cá nhân 
    @RequestMapping(value = "/tai-khoan-cua-toi", method = RequestMethod.POST)
    public String updateUser( HttpServletRequest request, HttpSession session) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String image = request.getParameter("image");
        session.setAttribute("imageUser", image);
        if(image == null)
                return "redirect:/error";
        // Cập nhật thông tin cá nhân
        User user = (User) session.getAttribute("UserLogin");
        user.setName(name);
        user.setEmail(email);
        int count = userService.UpdateAccount(user);
        if(count == 1)
            return "redirect:" + request.getHeader("Referer");
        else
            return "redirect:/error";
    }


}
