package com.NewsSpringMVC.Dao;

import com.NewsSpringMVC.Entity.About;
import com.NewsSpringMVC.Entity.Image;
import com.NewsSpringMVC.Entity.Post;

import static com.NewsSpringMVC.Handle.HandleUser.getCurrentDateTimeFormatted;

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
         Image imgdefault = new Image(9999,"", "", "placeholders/placeholder-image.PNG", 100, "", "", "");
        try {
            String sql = "SELECT * FROM images WHERE imageable_type LIKE '%Post' AND imageable_id = ? ";
            Image image = _jdbcTemplate.queryForObject(sql, new Object[]{post_id}, new BeanPropertyRowMapper<>(Image.class));
            if(image == null)
                return imgdefault;
            return image;
        } catch (EmptyResultDataAccessException e) {
            return imgdefault;
        }
    }

    // Lấy đường hình ảnh bài viết từ id 
    public String getConfigPathImgPost(int post_id) {
    	@SuppressWarnings("UnusedAssignment")
        String imagePath = null;
        try {
            String sql = "SELECT * FROM images WHERE imageable_type LIKE '%Post' AND imageable_id = ? ORDER BY created_at DESC LIMIT 1";
            Image image = _jdbcTemplate.queryForObject(sql, new Object[]{post_id}, new BeanPropertyRowMapper<>(Image.class));
            imagePath = "/template/web/storage/" + image.getPath();
        } catch (EmptyResultDataAccessException e) {
            // Xử lý ngoại lệ EmptyResultDataAccessException
            imagePath = "/template/web/storage/placeholders/user_placeholder.jpg";
        }
        return imagePath;
    }

    // Lấy hình ảnh người dùng từ user id
    public String getConfigPathImgUser(int user_id) {
        @SuppressWarnings("UnusedAssignment")
        String imagePath = null;
        try {
            String sql = "SELECT * FROM images WHERE imageable_type LIKE '%User' AND imageable_id = ? ORDER BY created_at DESC LIMIT 1";
            Image image = _jdbcTemplate.queryForObject(sql, new Object[]{user_id}, new BeanPropertyRowMapper<>(Image.class));
            imagePath = "/template/web/storage/" + image.getPath();
        } catch (EmptyResultDataAccessException e) {
            // Xử lý ngoại lệ EmptyResultDataAccessException
            imagePath = "/template/web/storage/placeholders/user_placeholder.jpg";
        }
        return imagePath;
    }
    
 // Lấy hình ảnh giới thiệu 1
    public String getConfigPathImgAbout1(int id) {
        @SuppressWarnings("UnusedAssignment")
        String imagePath = null;
        try {
            String sql = "SELECT * FROM settings WHERE id = ?";
            About about = _jdbcTemplate.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(About.class));
            imagePath = "/template/web/" + about.getAbout_first_image();
        } catch (EmptyResultDataAccessException e) {
            // Xử lý ngoại lệ EmptyResultDataAccessException
            imagePath = "/template/web/storage/placeholders/user_placeholder.jpg";
        }
        return imagePath;
    }

 // Lấy hình ảnh giới thiệu 1
    public String getConfigPathImgAbout2(int id) {
        @SuppressWarnings("UnusedAssignment")
        String imagePath = null;
        try {
            String sql = "SELECT * FROM settings WHERE id = ?";
            About about = _jdbcTemplate.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(About.class));
            imagePath = "/template/web/" + about.getAbout_second_image();
        } catch (EmptyResultDataAccessException e) {
            // Xử lý ngoại lệ EmptyResultDataAccessException
            imagePath = "/template/web/storage/placeholders/user_placeholder.jpg";
        }
        return imagePath;
    }
    // Thêm ảnh vào csdl
    @SuppressWarnings("StringConcatenationInsideStringBufferAppend")
 // Thêm ảnh vào csdl
    public int addImage(Image image) {
        String dateTime = getCurrentDateTimeFormatted();
        String sql = "INSERT INTO images (name, extension, path, imageable_id, imageable_type, created_at, updated_at) " +
                "VALUES (?, ?, ?, ?, ?, ?, ?)";

        int insertedRows = _jdbcTemplate.update(sql, image.getName(), image.getExtension(), image.getPath(),
                image.getImageable_id(), image.getImageable_type(), dateTime, dateTime);
        return insertedRows;
    }

}
