package com.NewsSpringMVC.Dao;

import com.NewsSpringMVC.Entity.User;
import com.NewsSpringMVC.Handle.HandleUser;
import static com.NewsSpringMVC.Handle.HandleUser.getCurrentDateTimeFormatted;
import com.NewsSpringMVC.Mapper.UserMapper;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
@SuppressWarnings("StringConcatenationInsideStringBufferAppend")
public class UserDao {

    @Autowired
    JdbcTemplate _jdbcTemplate;

    public List<User> getDataUser() {
        @SuppressWarnings({"Convert2Diamond", "UnusedAssignment"})
        List<User> listUser = new ArrayList<User>();
        String sql = "SELECT * FROM users";
        listUser = _jdbcTemplate.query(sql, new UserMapper());
        return listUser;
    }

 // Lấy ra tổng số người là quản trị viên 
    public int countAdmin() {
        String sql = "SELECT COUNT(*) FROM users WHERE role_id = 2";
        int count = _jdbcTemplate.queryForObject(sql, Integer.class);
        return count;
    }
    
 // Lấy ra tổng số người là khách hàng - role =1 
    public int countUser() {
        String sql = "SELECT COUNT(*) FROM users WHERE role_id = 1";
        int count = _jdbcTemplate.queryForObject(sql, Integer.class);
        return count;
    }

    
    // Trả về một user lấy từ người dùng ánh xạ tới cơ sở dữ liệu
    public User GetUserByAcc(User user) {
        String sql = "SELECT * FROM users WHERE email = N'" + user.getEmail() + "'";
        User result = _jdbcTemplate.queryForObject(sql, new UserMapper());
        return result;
    }

    // Thêm mới một tài khoản 
    public int AddAccount(User user) {
        String tokenUser = new HandleUser().generateToken(8);
        String dateTime = getCurrentDateTimeFormatted();
        StringBuffer sql = new StringBuffer();
        sql.append("INSERT ");
        sql.append("INTO users ");
        sql.append("(name, ");
        sql.append("email, ");
        sql.append("password_confirm, ");
        sql.append("password, ");
        sql.append("status, ");
        sql.append("role_id, ");
        sql.append("remember_token, ");
        sql.append("created_at, ");
        sql.append("updated_at) ");
        sql.append("VALUES ( ");
        sql.append("'"+user.getName()+"', ");
        sql.append("'"+user.getEmail()+"', ");
        sql.append("'"+user.getPassword_confirm()+"', ");
        sql.append("'"+user.getPassword()+"', ");
        sql.append("1, ");
        sql.append("1, ");
        sql.append("'"+tokenUser+"', ");
        sql.append("'"+dateTime+"', ");
        sql.append("'"+dateTime+"' ");
        sql.append(")");
        int insert = _jdbcTemplate.update(sql.toString());
        return insert; // cập nhật được bao nhiêu dòng
    }
    
    // Kiểm tra email đã sử dụng hay chưa
    public User GetUserByEmail(String email) {
        try {
            String sql = "SELECT * FROM users WHERE email = ?";
            User user = _jdbcTemplate.queryForObject(sql, new Object[]{email}, new BeanPropertyRowMapper<>(User.class));
            return user;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
    
    // Lấy thông tin tài khoản từ Id
    public User getUserById(int userId) {
        try {
            String sql = "SELECT * FROM users WHERE id = ?";
            User user = _jdbcTemplate.queryForObject(sql, new Object[]{userId}, new BeanPropertyRowMapper<>(User.class));
            return user;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
    
    public int UpdateAccount(User user) {
        String dateTime = getCurrentDateTimeFormatted();
        StringBuffer sql = new StringBuffer();
        sql.append("UPDATE users SET ");
        sql.append("name = '"+user.getName()+"', ");
        sql.append("email = '"+user.getEmail()+"', ");
        sql.append("updated_at = '"+dateTime+"' ");
        sql.append("WHERE id = "+user.getId());
        int update = _jdbcTemplate.update(sql.toString());
        return update; // cập nhật được bao nhiêu dòng
    }
      
    
}
