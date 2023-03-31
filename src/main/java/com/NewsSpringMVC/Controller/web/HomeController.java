package com.NewsSpringMVC.Controller.web;

import com.NewsSpringMVC.Entity.User;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.NewsSpringMVC.Dao.UserDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller(value = "homeControllerOfWeb")
public class HomeController extends BaseController {
    
    @RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
    public ModelAndView homePage(HttpSession session) {
        User user = (User) session.getAttribute("UserInfo");
        InitCategory(); // Gọi hàm khởi tạo Category
        _mvShare.addObject("UserInfo", user); // nếu user đăng nhập lấy thông tin
        _mvShare.addObject("listNewPostHome", postService.newPostCategory(4));
        _mvShare.addObject("listCommentHome", commentService.getDataComment());
        _mvShare.setViewName("web/home");
        return _mvShare;
    }


    @RequestMapping(value = "/error", method = RequestMethod.GET)
    public ModelAndView page404() {
         _mvShare.setViewName("404");
        return _mvShare;
    }   
    
    @RequestMapping(value = "/tin-tuc-moi-nhat", method = RequestMethod.GET)
    public ModelAndView pageNewPost() {
        _mvShare.setViewName("web/newspost");
        return _mvShare;
    }  
    
    @RequestMapping(value = "/tin-nong", method = RequestMethod.GET)
    public ModelAndView pageHotPost() {
        _mvShare.setViewName("web/hotpost");
        return _mvShare;
    } 
    
    @RequestMapping(value = "/xem-nhieu-nhat", method = RequestMethod.GET)
    public ModelAndView pageViewsPost() {
        _mvShare.setViewName("web/viewspost");
        return _mvShare;
    } 
    
    @RequestMapping(value = "/tim-kiem", method = RequestMethod.POST)
    public ModelAndView pageSearch(HttpServletRequest request) {
        String searchValue = request.getParameter("search");
        _mvShare.addObject("listPostSreach", postService.listPostSreach(searchValue));
        _mvShare.addObject("keySearch", searchValue);
        _mvShare.setViewName("web/searchpost");
        return _mvShare;
    } 
    
    @RequestMapping(value = "/gioi-thieu", method = RequestMethod.GET)
    public ModelAndView pageAbout() {
        _mvShare.setViewName("web/about");
        return _mvShare;
    } 
    
    @RequestMapping(value = "/lien-he", method = RequestMethod.GET)
    public ModelAndView pageContact() {
        _mvShare.setViewName("web/contact");
        return _mvShare;
    } 
    
     // Khởi tạo 10 category
    public void InitCategory() {
        // Trừ chưa phân loại --> get(0)
        _mvShare.addObject("nameCate01", homeService.getDataCategory().get(1).getName());
        _mvShare.addObject("idCate01", homeService.getDataCategory().get(1).getId());
        _mvShare.addObject("nameCate02", homeService.getDataCategory().get(2).getName());
        _mvShare.addObject("idCate02", homeService.getDataCategory().get(2).getId());
        _mvShare.addObject("nameCate03", homeService.getDataCategory().get(3).getName());
        _mvShare.addObject("idCate03", homeService.getDataCategory().get(3).getId());
        _mvShare.addObject("nameCate04", homeService.getDataCategory().get(4).getName());
        _mvShare.addObject("idCate04", homeService.getDataCategory().get(4).getId());
        _mvShare.addObject("nameCate05", homeService.getDataCategory().get(5).getName());
        _mvShare.addObject("idCate05", homeService.getDataCategory().get(5).getId());
        _mvShare.addObject("nameCate06", homeService.getDataCategory().get(6).getName());
        _mvShare.addObject("idCate06", homeService.getDataCategory().get(6).getId());
        _mvShare.addObject("nameCate07", homeService.getDataCategory().get(7).getName());
        _mvShare.addObject("idCate07", homeService.getDataCategory().get(7).getId());
        _mvShare.addObject("nameCate08", homeService.getDataCategory().get(8).getName());
        _mvShare.addObject("idCate08", homeService.getDataCategory().get(8).getId());
        _mvShare.addObject("nameCate09", homeService.getDataCategory().get(9).getName());
        _mvShare.addObject("idCate09", homeService.getDataCategory().get(9).getId());
        _mvShare.addObject("nameCate10", homeService.getDataCategory().get(10).getName());
        _mvShare.addObject("idCate10", homeService.getDataCategory().get(10).getId());
    }

}
