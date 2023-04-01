package com.NewsSpringMVC.Service.web;

import com.NewsSpringMVC.Entity.Tag;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public interface ITagService {
    @Autowired
    public List<Tag> listTagbyPostID(int post_id);
}
