package com.NewsSpringMVC.Dao;
import com.NewsSpringMVC.Entity.User;
import com.NewsSpringMVC.Mapper.UserMapper;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao {
    @Autowired
    JdbcTemplate _jdbcTemplate;

    public List<User> getDataList(){
        @SuppressWarnings({"Convert2Diamond", "UnusedAssignment"})
        List<User> listUser = new ArrayList<User>();
        String sql = "SELECT * FROM users";
        listUser = _jdbcTemplate.query(sql, new UserMapper());
        return listUser;
    }
    
    public static void main(String [] args){
        UserDao userDao = new UserDao();
         List<User> list = userDao.getDataList();
    }
    
}
