package com.NewsSpringMVC.Service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.NewsSpringMVC.Entity.Role;
import org.springframework.stereotype.Service;
@Service
public interface IRoleServiceAdmin {
    @Autowired
    public List<Role> getDataRole();
    public int AddRole(Role role);
    public Role getRoleById(int id);
    public int UpdateRole(Role role);
}
