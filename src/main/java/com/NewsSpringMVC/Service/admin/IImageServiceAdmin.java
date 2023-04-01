package com.NewsSpringMVC.Service.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public interface IImageServiceAdmin {
	@Autowired
	public String getConfigPathImgUser(int user_id);
}
