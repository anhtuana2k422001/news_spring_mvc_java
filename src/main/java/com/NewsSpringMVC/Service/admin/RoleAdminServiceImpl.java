package com.NewsSpringMVC.Service.admin;

import com.NewsSpringMVC.Dao.RoleDao;
import com.NewsSpringMVC.Entity.Role;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleAdminServiceImpl implements IRoleAdminService{
	@Autowired
    private RoleDao roleDao;
	
	@Override
	public List<Role> getDataRole() {
		return roleDao.getDataRole();
	}
}
