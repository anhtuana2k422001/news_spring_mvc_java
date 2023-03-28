package com.NewsSpringMVC.Dao;

import com.NewsSpringMVC.Entity.Post;
import com.NewsSpringMVC.Mapper.PostMapper;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class PostDao {
    @Autowired
    JdbcTemplate _jdbcTemplate;

    // Lấy ra các bài viết mới nhất theo danh mục
    @SuppressWarnings({"Convert2Diamond", "UnusedAssignment"})
    // Limit: là giới hạn số bài lấy ra của từng danh mục
    public List<Post> newPostCategory(int limit) {
        List<Post> listPost = new ArrayList<Post>();
        String sql = "SELECT p1.*\n"
                + "        FROM posts p1\n"
                + "        INNER JOIN (\n"
                + "            SELECT MAX(created_at) AS max_created_at, category_id\n"
                + "            FROM posts\n"
                + "            WHERE category_id != '1'\n"
                + "            GROUP BY category_id\n"
                + "        ) p2 ON p1.category_id = p2.category_id AND p1.created_at = p2.max_created_at\n"
                + "        ORDER BY p1.created_at DESC  LIMIT " + limit + "";
        listPost = _jdbcTemplate.query(sql, new PostMapper());
        return listPost;
    }
    
    // Lấy thông tin bài viết
    public Post getPostDetail(String slugPost) {
        String sql = "SELECT * FROM posts WHERE slug = ?";
        List<Post> posts = _jdbcTemplate.query(sql, new Object[]{slugPost}, new PostMapper());
        if (posts.isEmpty()) {
            return null; // hoặc đưa ra một thông báo lỗi thích hợp
        } else {
            return posts.get(0);
        }
    }
}
