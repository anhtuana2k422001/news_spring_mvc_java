package com.NewsSpringMVC.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.NewsSpringMVC.Entity.About;
import com.NewsSpringMVC.Mapper.AboutMapper;

@Repository
@SuppressWarnings({ "Convert2Diamond", "UnusedAssignment" })
public class AboutDao {
	@Autowired
	JdbcTemplate _jdbcTemplate;
	
	public List<About> getDataAbout(){
        List<About> listAbout = new ArrayList<About>();
        String sql = "SELECT * FROM settings;";
        listAbout = _jdbcTemplate.query(sql, new AboutMapper());
        return listAbout;
    }
}
