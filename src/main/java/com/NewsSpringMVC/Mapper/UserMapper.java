package com.NewsSpringMVC.Mapper;

import com.NewsSpringMVC.Entity.User;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class UserMapper implements RowMapper<User>{

    @Override
    public User mapRow(ResultSet rs, int rowNum) throws SQLException {
        User user = new User();
        user.setId(rs.getInt("id"));        
        user.setName(rs.getString("name"));
        user.setEmail(rs.getString("email"));        
        user.setEmail_verified_at(rs.getString("email_verified_at"));
        user.setPassword(rs.getString("password"));        
        user.setStatus(rs.getInt("status"));
        user.setRole_id(rs.getInt("role_id"));        
        user.setRemember_token(rs.getString("remember_token"));
        user.setCreated_at(rs.getString("created_at"));        
        user.setUpdated_at(rs.getString("updated_at"));
        return user;
    }
    
}
