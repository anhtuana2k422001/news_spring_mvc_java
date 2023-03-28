package com.NewsSpringMVC.Mapper;

import com.NewsSpringMVC.Entity.Image;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

public class ImageMapper implements RowMapper<Image>{

    @Override
    public Image mapRow(ResultSet rs, int rowNum) throws SQLException {
        Image image = new Image();
        image.setId(rs.getInt("id")); 
        image.setName(rs.getString("name"));  
        image.setExtension(rs.getString("extension"));
        image.setPath(rs.getString("path"));
        image.setImageable_id(rs.getInt("imageable_id"));
        image.setImageable_type(rs.getString("imageable_type"));
        image.setCreated_at(rs.getString("created_at"));        
        image.setUpdated_at(rs.getString("updated_at"));
        return image;
    }
    
}
