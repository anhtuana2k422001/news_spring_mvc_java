package com.NewsSpringMVC.Service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.NewsSpringMVC.Entity.Tag;

@Service
public interface ITagServiceAdmin {
	@Autowired
    public List<Tag> getDataTag();
}
