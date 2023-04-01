package com.NewsSpringMVC.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.NewsSpringMVC.Entity.Tag;
import com.NewsSpringMVC.Mapper.TagMapper;

@Repository
@SuppressWarnings({"UnusedAssignment", "Convert2Diamond"})
public class TagDao {
	@Autowired
    JdbcTemplate _jdbcTemplate;

    public List<Tag> getDataTag() {
        List<Tag> listTag = new ArrayList<Tag>();
        String sql = "SELECT * FROM `tags`;";
        listTag = _jdbcTemplate.query(sql, new TagMapper());
        return listTag;
    }
    
    public List<Tag> listTagbyPostID(int post_id) {
        List<Tag> listTag = new ArrayList<Tag>();
        String sql = "SELECT * FROM tags, posts, post_tag WHERE post_id = " + post_id + " \n"
                + "        AND tags.id = post_tag.tag_id AND  posts.id = post_tag.post_id";
        listTag = _jdbcTemplate.query(sql, new TagMapper());
        return listTag;
    }
}
