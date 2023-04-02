package com.NewsSpringMVC.Entity;

public class Comment {
    private int id;    
    private String the_comment;
    private int post_id;
    private int user_id;
    private String created_at;
    private String updated_at;

    
    public Comment( String the_comment, int post_id, int user_id, String created_at, String updated_at) {
		super();
		 
		this.the_comment = the_comment;
		this.post_id = post_id;
		this.user_id = user_id;
		this.created_at = created_at;
		this.updated_at = updated_at;
	}

	public Comment() {
        super();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getThe_comment() {
        return the_comment;
    }

    public void setThe_comment(String the_comment) {
        this.the_comment = the_comment;
    }

    public int getPost_id() {
        return post_id;
    }

    public void setPost_id(int post_id) {
        this.post_id = post_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getCreated_at() {
        return created_at;
    }

    public void setCreated_at(String created_at) {
        this.created_at = created_at;
    }

    public String getUpdated_at() {
        return updated_at;
    }

    public void setUpdated_at(String updated_at) {
        this.updated_at = updated_at;
    }
    
}
