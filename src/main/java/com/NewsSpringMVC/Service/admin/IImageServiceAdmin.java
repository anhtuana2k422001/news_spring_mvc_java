package com.NewsSpringMVC.Service.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.NewsSpringMVC.Entity.Image;

@Service
public interface IImageServiceAdmin {
	@Autowired
	public String getConfigPathImgUser(int user_id);
	public String getConfigPathImgPost(int post_id);
	public int addImage(Image image);
	public String getConfigPathImgAbout1(int id);
	public String getConfigPathImgAbout2(int id);
}
