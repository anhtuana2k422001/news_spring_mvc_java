package com.NewsSpringMVC.Dao;

import com.NewsSpringMVC.Entity.Category;
import com.NewsSpringMVC.Entity.Post;
import com.NewsSpringMVC.Entity.User;
import com.NewsSpringMVC.Handle.HandleUser;
import com.NewsSpringMVC.Mapper.CategoryMapper;
import com.NewsSpringMVC.Mapper.PostMapper;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import static com.NewsSpringMVC.Handle.HandleUser.getCurrentDateTimeFormatted;

@Repository
@SuppressWarnings({"UnusedAssignment", "Convert2Diamond"})
public class PostDao {
    @Autowired
    JdbcTemplate _jdbcTemplate;

    // Lấy ra các bài viết mới nhất theo danh mục
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
    
    // Lấy danh sách bài viết theo id chuyên mục
     public List<Post> listPostCategory(int idCate){
        List<Post> listPost = new ArrayList<Post>();
        String sql = "SELECT * FROM posts WHERE category_id = '" + idCate + "'	;";
        listPost = _jdbcTemplate.query(sql, new PostMapper());
        return listPost;
    }
     
    // Lấy ra danh sách bài viết 
    public List<Post> listNewPost(){
       List<Post> listPost = new ArrayList<Post>();
       String sql = "SELECT *  FROM posts  ORDER BY created_at DESC LIMIT 30";
       listPost = _jdbcTemplate.query(sql, new PostMapper());
       return listPost;
    }
    
    // Lấy ra danh sách bài biết hot nhất, nhiều người bình luận nhất
    public List<Post> listHotPost() {
        List<Post> listPost = new ArrayList<Post>();
        String sql = "SELECT posts.id, posts.title, posts.slug, posts.excerpt, posts.body,\n"
                + "        posts.user_id, posts.category_id, posts.views, posts.approved, posts.created_at,\n"
                + "        posts.updated_at,\n"
                + "         COUNT(comments.id) as num_comments\n"
                + "        FROM posts\n"
                + "        JOIN comments ON posts.id = comments.post_id\n"
                + "        GROUP BY posts.id\n"
                + "        ORDER BY num_comments DESC LIMIT 30";
        listPost = _jdbcTemplate.query(sql, new PostMapper());
        return listPost;
    }
    
    // Lấy ra danh sách bài viết nhiều lượt xem nhất
    public List<Post> listViewsPost(){
       List<Post> listPost = new ArrayList<Post>();
       String sql = "SELECT *  FROM posts  ORDER BY views DESC LIMIT 30";
       listPost = _jdbcTemplate.query(sql, new PostMapper());
       return listPost;
    }
    
    // Tìm kiếm bài viết theo từ khóa 
    public List<Post> listPostSreach(String key){
        List<Post> listPost = new ArrayList<Post>();
        String sql = "SELECT * FROM posts WHERE title REGEXP '[[:<:]]" + key + "[[:>:]]' COLLATE utf8mb4_unicode_ci";
        listPost = _jdbcTemplate.query(sql, new PostMapper());
        return listPost;
    }
    

  //Lấy ra thông tin của 1 bài viết cụ thể
    public Post GetPostById(int id)
    {
    	try {
    		String sql = "SELECT * FROM posts WHERE id = ?";
    		Post post = _jdbcTemplate.queryForObject(sql, new Object[]{id}, new PostMapper());
            return post;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
    
    public List<Post> getDataPost() {
        @SuppressWarnings({"Convert2Diamond", "UnusedAssignment"})
        List<Post> listPost = new ArrayList<Post>();
        String sql = "SELECT * FROM posts";
        listPost = _jdbcTemplate.query(sql, new PostMapper());
        return listPost;
    }
    
    //Lấy ra thông tin của 1 bài viết cụ thể
    public Post getPostById(int post_id) {
        try {
            String sql = "SELECT * FROM posts WHERE id = ?";
            Post post = _jdbcTemplate.queryForObject(sql, new Object[]{post_id}, new PostMapper());
            return post;
        } catch (EmptyResultDataAccessException e) {
            return null;
        }

    }
    
 // Lấy tên danh mục từ id bài viết
    public String getTitlePostId(int post_id) {
        try {
            String sql = "SELECT * FROM posts WHERE id = ?";
            Post post = _jdbcTemplate.queryForObject(sql, new Object[]{post_id}, new PostMapper());
            return post.getTitle();
        } catch (EmptyResultDataAccessException e) {
            return null;
        }
    }
    
    // chỉnh sửa bài viết
    @SuppressWarnings("StringConcatenationInsideStringBufferAppend")
    public int UpdatePost(Post post) {
        String dateTime = getCurrentDateTimeFormatted();
        StringBuffer sql = new StringBuffer();
        sql.append("UPDATE posts SET ");
        sql.append("title = '"+post.getTitle()+"', ");
        sql.append("slug = '"+post.getSlug()+"', ");
        sql.append("excerpt = '"+post.getExcerpt()+"', ");
        sql.append("body = '"+post.getBody()+"', ");
        sql.append("user_id = '"+post.getUser_id()+"', ");
        sql.append("category_id = '"+post.getCategory_id()+"', ");
        sql.append("views = '"+post.getViews()+"', ");
        sql.append("approved = '"+post.getApproved()+"', ");
        sql.append("updated_at = '"+dateTime+"' ");
        sql.append("WHERE id = "+post.getId());
        int update = _jdbcTemplate.update(sql.toString());
        return update; // cập nhật được bao nhiêu dòng
    }

	 // thêm mới bài viết
    @SuppressWarnings("StringConcatenationInsideStringBufferAppend")
    public int AddPost(Post post) {
        String dateTime = getCurrentDateTimeFormatted();
        StringBuffer sql = new StringBuffer();
        sql.append("INSERT ");
        sql.append("INTO posts ");
        sql.append("(title, ");
        sql.append("slug, ");
        sql.append("excerpt, ");
        sql.append("body, ");
        sql.append("user_id, ");
        sql.append("category_id, ");
        sql.append("views, ");
        sql.append("approved, ");
        sql.append("created_at, ");
        sql.append("updated_at) ");
        sql.append("VALUES ( ");
        sql.append("'"+post.getTitle()+"', ");
        sql.append("'"+post.getSlug()+"', ");
        sql.append("'"+post.getExcerpt()+"', ");
        sql.append("'"+post.getBody()+"', ");
        sql.append("233, ");
        sql.append("2, ");
        sql.append("'"+post.getViews()+"', ");
        sql.append("1, ");
        sql.append("'"+dateTime+"', ");
        sql.append("'"+dateTime+"' ");
        sql.append(")");
        int insert = _jdbcTemplate.update(sql.toString());
        return insert; // cập nhật được bao nhiêu dòng
    }

}
