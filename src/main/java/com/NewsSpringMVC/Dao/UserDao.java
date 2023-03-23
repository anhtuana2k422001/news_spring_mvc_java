package com.NewsSpringMVC.Dao;

import com.NewsSpringMVC.Entity.User;
import com.NewsSpringMVC.Handle.HandleUser;
import static com.NewsSpringMVC.Handle.HandleUser.getCurrentDateTimeFormatted;
import com.NewsSpringMVC.Mapper.UserMapper;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
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

    // Trả về một user lấy từ người dùng ánh xạ tới cơ sở dữ liệu
    public User GetUserByAcc(User user) {
        String sql = "SELECT * FROM users WHERE email = N'" + user.getEmail() + "'";
        User result = _jdbcTemplate.queryForObject(sql, new UserMapper());
        return result;
    }

    // Thêm mới một tài khoản 
    @SuppressWarnings("StringConcatenationInsideStringBufferAppend")
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
}
