package com.NewsSpringMVC.Service.admin;

import com.NewsSpringMVC.Dao.ImageDao;
import com.NewsSpringMVC.Dao.UserDao;
import com.NewsSpringMVC.Entity.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImplAdmin implements IUserServiceAdmin {

    @Autowired
    @SuppressWarnings("FieldNameHidesFieldInSuperclass")
    private UserDao userDao;
    

    @Override
    public User getUserById(int userId) {
        return userDao.getUserById(userId);
    }

	@Override
	public List<User> getDataUser() {
		return userDao.getDataUser();
	}

	 
 

}
