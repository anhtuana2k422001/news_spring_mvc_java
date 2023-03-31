package com.NewsSpringMVC.Mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper; 
import com.NewsSpringMVC.Entity.Tag;

public class TagMapper implements RowMapper<Tag>{
	@Override
    public Tag mapRow(ResultSet rs, int rowNum) throws SQLException {
        Tag tag = new Tag();
        tag.setId(rs.getInt("id"));
        tag.setName(rs.getString("name"));
        tag.setCreated_at(rs.getString("created_at"));
        tag.setUpdated_at(rs.getString("updated_at"));
        return tag;
    }
}
