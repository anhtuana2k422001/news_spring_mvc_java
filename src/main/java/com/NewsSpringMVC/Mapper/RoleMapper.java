package com.NewsSpringMVC.Mapper;

import com.NewsSpringMVC.Entity.Role;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class RoleMapper implements RowMapper<Role>{

	@Override
	public Role mapRow(ResultSet rs, int rowNum) throws SQLException {
		Role role = new Role();
        role.setId(rs.getInt("id"));
        role.setName(rs.getString("name"));     
        role.setCreated_at(rs.getString("created_at"));        
        role.setUpdated_at(rs.getString("updated_at"));
        return role;
	}

}
