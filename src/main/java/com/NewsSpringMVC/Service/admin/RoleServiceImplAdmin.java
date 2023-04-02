package com.NewsSpringMVC.Service.admin;

import com.NewsSpringMVC.Dao.RoleDao;
import com.NewsSpringMVC.Entity.Role;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImplAdmin implements IRoleServiceAdmin {

    @Autowired
    private RoleDao roleDao;

    @Override
    public List<Role> getDataRole() {
        return roleDao.getDataRole();
    }

	@Override
	public int AddRole(Role role) {
		// TODO Auto-generated method stub
		return roleDao.AddRole(role);
	}

	@Override
	public Role getRoleById(int id) {
		// TODO Auto-generated method stub
		return roleDao.getRoleById(id);
	}

	@Override
	public int UpdateRole(Role role) {
		// TODO Auto-generated method stub
		return roleDao.UpdateRole(role);
	}
}
