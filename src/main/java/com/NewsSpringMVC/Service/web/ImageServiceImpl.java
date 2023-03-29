package com.NewsSpringMVC.Service.web;

import com.NewsSpringMVC.Dao.ImageDao;
import com.NewsSpringMVC.Entity.Image;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ImageServiceImpl implements IImageService {
    @Autowired
    ImageDao imageDao = new ImageDao();    

    @Override
    public Image getPathImgPost(int post_id) {
       return imageDao.getPathImgPost(post_id);
    }

    @Override
    public String getConfigPathImgPost(int post_id) {
        return imageDao.getConfigPathImgPost(post_id);
    }
    
}
