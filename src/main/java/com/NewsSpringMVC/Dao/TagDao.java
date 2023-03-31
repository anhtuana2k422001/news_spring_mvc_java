package com.NewsSpringMVC.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.NewsSpringMVC.Entity.Tag;
import com.NewsSpringMVC.Mapper.TagMapper;

@Repository
public class TagDao {
	@Autowired
    JdbcTemplate _jdbcTemplate;

    @SuppressWarnings({"UnusedAssignment", "Convert2Diamond"})
    public List<Tag> getDataTag() {
        List<Tag> listTag = new ArrayList<Tag>();
        String sql = "SELECT * FROM `tags`;";
        listTag = _jdbcTemplate.query(sql, new TagMapper());
        return listTag;
    }
}
