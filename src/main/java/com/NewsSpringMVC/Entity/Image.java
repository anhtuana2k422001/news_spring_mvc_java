package com.NewsSpringMVC.Entity;

public class Image {
    private int id;    
    private String name;
    private String extension;
    private String path;
    private int imageable_id;
    private String imageable_type;
    private String created_at;
    private String updated_at;

    public Image() {
        super();
    }

    public Image(  int id, String name, String extension, String path, int imageable_id, String imageable_type,
			String created_at, String updated_at) {
		super();
		this.id = id;
                this.name = name;
		this.extension = extension;
		this.path = path;
		this.imageable_id = imageable_id;
		this.imageable_type = imageable_type;
		this.created_at = created_at;
		this.updated_at = updated_at;
	}
 

	public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getExtension() {
        return extension;
    }

    public void setExtension(String extension) {
        this.extension = extension;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public int getImageable_id() {
        return imageable_id;
    }

    public void setImageable_id(int imageable_id) {
        this.imageable_id = imageable_id;
    }

    public String getImageable_type() {
        return imageable_type;
    }

    public void setImageable_type(String imageable_type) {
        this.imageable_type = imageable_type;
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
