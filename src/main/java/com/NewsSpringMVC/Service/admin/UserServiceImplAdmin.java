package com.NewsSpringMVC.Service.admin;

import com.NewsSpringMVC.Dao.ImageDao;
import com.NewsSpringMVC.Dao.UserDao;
import com.NewsSpringMVC.Entity.User;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
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

	@Override
	public int AddAccount(User user) {
		user.setPassword(BCrypt.hashpw(user.getPassword(), BCrypt.gensalt(8)));   
	       user.setPassword_confirm(BCrypt.hashpw(user.getPassword_confirm(), BCrypt.gensalt(8)));
	       return userDao.AddAccount(user);
	}

	@Override
	public boolean isEmailAlreadyInUse(String userEmail) { 
		User user = userDao.GetUserByEmail(userEmail);
	       return user != null;
	}

	@Override
	public int countAdmin() {
		// TODO Auto-generated method stub
		return userDao.countAdmin();
	}

	@Override
	public int countUser() {
		// TODO Auto-generated method stub
		return userDao.countUser();
	}

	 
 

}
