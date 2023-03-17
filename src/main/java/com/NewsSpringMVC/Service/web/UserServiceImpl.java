package com.NewsSpringMVC.Service.web;

import com.NewsSpringMVC.Dao.UserDao;
import com.NewsSpringMVC.Entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {
    @Autowired
    UserDao userDao = new UserDao();
   
    @SuppressWarnings("unused")
	public boolean CheckAcount(User user) {
    	String pass = user.getPassword();
    	User userata = userDao.GetUserByAcc(user);
    	if(user != null) {
    		if(pass == userata.getPassword())
    			return true;
    		else 
    			return false;
    	}
    	return false;
    }
    
}
