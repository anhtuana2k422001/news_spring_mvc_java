package com.NewsSpringMVC.Service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.NewsSpringMVC.Dao.AboutDao;
import com.NewsSpringMVC.Entity.About;
@Service
public class AboutServiceImplAdmin implements IAboutServiceAdmin{
	@Autowired
    private AboutDao aboutDao;
	
	@Override
	public List<About> getDataAbout() {
		// TODO Auto-generated method stub
		return aboutDao.getDataAbout();
	}

}
