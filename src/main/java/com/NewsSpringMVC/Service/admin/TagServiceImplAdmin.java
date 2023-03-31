package com.NewsSpringMVC.Service.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.NewsSpringMVC.Dao.TagDao;
import com.NewsSpringMVC.Entity.Tag;
@Service
public class TagServiceImplAdmin implements ITagServiceAdmin{
	@Autowired
    private TagDao tagDao;

    @Override
    public List<Tag> getDataTag() {
        return tagDao.getDataTag();
    }
}
