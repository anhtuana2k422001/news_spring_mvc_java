package com.NewsSpringMVC.Dao;

import com.NewsSpringMVC.Entity.Role;
import com.NewsSpringMVC.Mapper.RoleMapper;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class RoleDao {
	@Autowired
    JdbcTemplate _jdbcTemplate;
	
	@SuppressWarnings({"UnusedAssignment", "Convert2Diamond"})
	   public List<Role> getDataRole(){
	        List<Role> listRole = new ArrayList<Role>();
	        String sql = "SELECT * FROM `roles`;";
	        listRole = _jdbcTemplate.query(sql, new RoleMapper());
	        return listRole;
	    }
}
