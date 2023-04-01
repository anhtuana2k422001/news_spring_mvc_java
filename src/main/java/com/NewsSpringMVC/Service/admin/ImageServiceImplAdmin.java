package com.NewsSpringMVC.Service.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.NewsSpringMVC.Dao.ImageDao;

@Service
public class ImageServiceImplAdmin implements IImageServiceAdmin {

    @Autowired
    private ImageDao imageDao;

    @Override
    public String getConfigPathImgUser(int user_id) {
        return imageDao.getConfigPathImgUser(user_id);
    }

}
