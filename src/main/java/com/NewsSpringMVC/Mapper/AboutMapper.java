package com.NewsSpringMVC.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.NewsSpringMVC.Entity.About;
import com.NewsSpringMVC.Entity.Comment;

public class AboutMapper implements RowMapper<About>{
	@Override
    public About mapRow(ResultSet rs, int rowNum) throws SQLException {
		About about = new About();
		about.setId(rs.getInt("id")); 
		about.setAbout_first_text(rs.getString("about_first_text"));  
		about.setAbout_second_text(rs.getString("about_second_text"));
		about.setAbout_first_image(rs.getString("about_first_image"));
		about.setAbout_second_image(rs.getString("about_second_image"));  
		about.setAbout_our_mission(rs.getString("about_our_mission")); 
		about.setAbout_our_vision(rs.getString("about_our_vision")); 
		about.setAbout_services(rs.getString("about_services")); 
		about.setUpdated_at(rs.getString("updated_at"));
        return about;
    }
}
