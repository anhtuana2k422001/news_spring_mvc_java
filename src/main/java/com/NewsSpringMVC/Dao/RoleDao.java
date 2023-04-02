package com.NewsSpringMVC.Dao;

import com.NewsSpringMVC.Entity.Category;
import com.NewsSpringMVC.Entity.Role;
import com.NewsSpringMVC.Mapper.CategoryMapper;
import com.NewsSpringMVC.Mapper.RoleMapper;

import static com.NewsSpringMVC.Handle.HandleUser.getCurrentDateTimeFormatted;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class RoleDao {

    @Autowired
    JdbcTemplate _jdbcTemplate;

    @SuppressWarnings({"UnusedAssignment", "Convert2Diamond"})
    public List<Role> getDataRole() {
        List<Role> listRole = new ArrayList<Role>();
        String sql = "SELECT * FROM `roles`;";
        listRole = _jdbcTemplate.query(sql, new RoleMapper());
        return listRole;
    }
    
 // thêm mới bài viết
    @SuppressWarnings("StringConcatenationInsideStringBufferAppend")
    public int AddRole(Role role) {
        String dateTime = getCurrentDateTimeFormatted();
        StringBuffer sql = new StringBuffer();
        sql.append("INSERT ");
        sql.append("INTO roles ");
        sql.append("(name, "); 
        sql.append("created_at, ");
        sql.append("updated_at) ");
        sql.append("VALUES ( ");
        sql.append("'"+role.getName()+"', "); 
        sql.append("'"+dateTime+"', ");
        sql.append("'"+dateTime+"' ");
        sql.append(")");
        int insert = _jdbcTemplate.update(sql.toString());
        return insert; // cập nhật được bao nhiêu dòng
    }
    
 // Lấy tên danh mục theo ID
    public Role getRoleById(int id) {
        try {
            String sql = "SELECT * FROM roles WHERE id = ?";
            Role role = _jdbcTemplate.queryForObject(sql, new Object[]{id}, new RoleMapper());
            return role;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
    
 // chỉnh sửa bài viết
    @SuppressWarnings("StringConcatenationInsideStringBufferAppend")
    public int UpdateRole(Role role) {
        String dateTime = getCurrentDateTimeFormatted();
        StringBuffer sql = new StringBuffer();
        sql.append("UPDATE roles SET ");
        sql.append("name = '"+role.getName()+"', "); 
        sql.append("updated_at = '"+dateTime+"' ");
        sql.append("WHERE id = "+role.getId());
        int update = _jdbcTemplate.update(sql.toString());
        return update; // cập nhật được bao nhiêu dòng
    }
}
