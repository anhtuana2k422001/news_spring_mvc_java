package com.NewsSpringMVC.Controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.apache.commons.io.FilenameUtils;

import com.NewsSpringMVC.Entity.Image;
import com.NewsSpringMVC.Entity.Post;
import com.NewsSpringMVC.Entity.User;
 
 

@Controller(value = "postControllerOfAdmin")
public class PostControllerAdmin extends BaseControllerAdmin {
	 

	@RequestMapping(value = "/admin/listpost", method = RequestMethod.GET)
	public ModelAndView listPost(@RequestParam(defaultValue = "0") int page) {
	    String viewName = "admin/post/listpost";
	    _mvShareAdmin.addObject("listPostAdmin", _postServiceAdmin.getDataPost());
	    
	    
	    _mvShareAdmin.setViewName(viewName);
	    return _mvShareAdmin;
	}
	
	public void someMethod(List<Post> listPostAdmin) {
	    int totalPages = (int) Math.ceil((double) listPostAdmin.size() / 10);
	    // do something with totalPages
	}

	
	@RequestMapping(value = "/admin/editpost/{id}", method = RequestMethod.GET)
	public ModelAndView editPost(@PathVariable("id") int id) {
		String viewName = "admin/post/editpost";
		_mvShareAdmin.addObject("postDetail", _postServiceAdmin.getPostById(id));
		_mvShareAdmin.addObject("listCate", _categoryServiceAdmin.getDataCategory());
		_mvShareAdmin.setViewName(viewName);
		_mvShareAdmin.addObject("post", new Post());
		return _mvShareAdmin;// Kế thừ từ BaseController
	}

	@RequestMapping(value = "/admin/editpost/{id}", method = RequestMethod.POST)
	public ModelAndView EditPost(@ModelAttribute("post") Post post, BindingResult result) {
		ModelAndView mav = new ModelAndView("editpost");
		// eidt post to database
		int count = _postServiceAdmin.UpdatePost(post);
		if (count == 1) {
			// Sửa bài viết thành công
			mav.setViewName("redirect:/admin/listpost");
		} else {
			// Sửa bài viết thất bại
			mav.addObject("error", "Không thể sửa bài viết. Vui lòng thử lại sau.");
		}
		return mav;
	}

	@RequestMapping(value = "/admin/createpost", method = RequestMethod.GET)
	public ModelAndView CreatePost() {
		String viewName = "admin/post/createpost";
		_mvShareAdmin.setViewName(viewName);
		_mvShareAdmin.addObject("post", new Post());
		_mvShareAdmin.addObject("image", new Image());
		return _mvShareAdmin;// Kế thừ từ BaseController
	}

	@RequestMapping(value = "/admin/createpost", method = RequestMethod.POST)
	public ModelAndView createPost(@RequestPart("thumbnail") MultipartFile thumbnail, @ModelAttribute("post") Post post,
			BindingResult result) throws Exception {
		ModelAndView mav = new ModelAndView("createpost");
		// add post to database
		int count = _postServiceAdmin.AddPost(post);

		// add image to database
		if (!thumbnail.isEmpty()) {
			String fileName = thumbnail.getOriginalFilename();
			String extension = FilenameUtils.getExtension(fileName);
			String file_name = UUID.randomUUID().toString() + "." + extension;
			String path = "images/" + file_name;
			int imageable_id = post.getId();
			String imageable_type = "App\\Models\\Post";
			String dateTime = "";
			Image image = new Image(fileName, extension, path, imageable_id, imageable_type, dateTime, dateTime);
			try {
				thumbnail.transferTo(new File("/template/web/storage/" + path));
				_imageServiceAdmin.addImage(image);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		if (count == 1) {
			mav.setViewName("redirect:/admin/listpost");
		} else {
			mav.addObject("error", "Không thể tạo bài viết. Vui lòng thử lại sau.");
		}
		return mav;
	}

}
