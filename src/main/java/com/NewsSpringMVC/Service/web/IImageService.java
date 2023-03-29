package com.NewsSpringMVC.Service.web;

import com.NewsSpringMVC.Entity.Image;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public interface IImageService {
    @Autowired
    public Image getPathImgPost(int post_id);
    public String getConfigPathImgPost(int post_id );
}
