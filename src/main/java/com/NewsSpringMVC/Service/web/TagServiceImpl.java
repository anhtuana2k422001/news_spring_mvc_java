package com.NewsSpringMVC.Service.web;


import com.NewsSpringMVC.Dao.TagDao;
import com.NewsSpringMVC.Entity.Tag;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class TagServiceImpl implements ITagService {
    @Autowired
    TagDao tagDao = new TagDao();    

    @Override
    public List<Tag> listTagbyPostID(int post_id) {
        return tagDao.listTagbyPostID(post_id);
    }
    
}
