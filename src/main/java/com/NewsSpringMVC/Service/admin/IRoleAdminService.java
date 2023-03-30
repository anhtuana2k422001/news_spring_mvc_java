package com.NewsSpringMVC.Service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.NewsSpringMVC.Entity.Role;

public interface IRoleAdminService {
	@Autowired
	   public List<Role> getDataRole();
}
