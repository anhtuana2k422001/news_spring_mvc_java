package com.NewsSpringMVC.Dao;

import com.NewsSpringMVC.Entity.Image;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ImageDao {

    @Autowired
    JdbcTemplate _jdbcTemplate;
    
    // Lấy thông tin hình ảnh bài viết từ id 
    public Image getPathImgPost(int post_id) {
        try {
            String sql = "SELECT * FROM images WHERE imageable_type LIKE '%Post' AND imageable_id = ? ";
            Image image = _jdbcTemplate.queryForObject(sql, new Object[]{post_id}, new BeanPropertyRowMapper<>(Image.class));
            return image;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
    
    // Lấy đường hình ảnh bài viết từ id 
    public String getConfigPathImgPost(int post_id ) {
        try {
            String sql = "SELECT * FROM images WHERE imageable_type LIKE '%Post' AND imageable_id = ? ";
            Image image = _jdbcTemplate.queryForObject(sql, new Object[]{post_id}, new BeanPropertyRowMapper<>(Image.class));
            return "/template/web/storage/" + image.getPath();
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
    
    
}
