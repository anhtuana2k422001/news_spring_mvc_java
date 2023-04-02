package com.NewsSpringMVC.Service.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.NewsSpringMVC.Dao.ImageDao;
import com.NewsSpringMVC.Entity.Image;

@Service
public class ImageServiceImplAdmin implements IImageServiceAdmin {

    @Autowired
    private ImageDao imageDao;

    @Override
    public String getConfigPathImgUser(int user_id) {
        return imageDao.getConfigPathImgUser(user_id);
    }

	@Override
	public String getConfigPathImgPost(int post_id) {
		// TODO Auto-generated method stub
		return imageDao.getConfigPathImgPost(post_id);
	}

	@Override
	public int addImage(Image image) {
		// TODO Auto-generated method stub
		return imageDao.addImage(image);
	}

	@Override
	public String getConfigPathImgAbout1(int id) {
		// TODO Auto-generated method stub
		return imageDao.getConfigPathImgAbout1(id);
	}

	@Override
	public String getConfigPathImgAbout2(int id) {
		// TODO Auto-generated method stub
		return imageDao.getConfigPathImgAbout2(id);
	}

	

}
