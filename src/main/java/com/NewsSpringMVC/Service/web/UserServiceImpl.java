package com.NewsSpringMVC.Service.web;

import com.NewsSpringMVC.Dao.UserDao;
import com.NewsSpringMVC.Entity.User;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements IUserService {
    @Autowired
    UserDao userDao = new UserDao();
   
    @SuppressWarnings("unused")
    @Override
    public boolean CheckAcount(User user) {
    	String pass = user.getPassword();
    	User userata = userDao.GetUserByAcc(user);
    	if(userata != null) {
    		if(pass.equals(userata.getPassword()))
                    return true;
    		else 
                    return false;
    	}
    	return false;
    }

    @Override
    public User UserLogin(User user) {
        User userlogin = userDao.GetUserByAcc(user);
        return userlogin;
    }


    @Override
    public int AddAcount(User user) {
       user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(8)));   
       user.setPassword_confirm(BCrypt.hashpw(user.getPassword_confirm(), BCrypt.gensalt(8)));
       return userDao.AddAccount(user);
    }
    
}
