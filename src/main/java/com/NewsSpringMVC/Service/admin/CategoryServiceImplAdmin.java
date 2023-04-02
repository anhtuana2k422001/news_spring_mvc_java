package com.NewsSpringMVC.Service.admin;

import com.NewsSpringMVC.Dao.CategoryDao;
import com.NewsSpringMVC.Entity.Category;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImplAdmin implements ICategoryServiceAdmin {
    @Autowired
    private CategoryDao categoryDao;
    
    @Override
    public List<Category> getDataCategory() {
       return categoryDao.getDataCategory();
    }

    @Override
    public String getNameCategoryById(int category_id) {
        return categoryDao.getNameCategoryById(category_id);
    }

	@Override
	public int AddCategory(Category category) {
		// TODO Auto-generated method stub
		return categoryDao.AddCategory(category);
	}

	@Override
	public int UpdateCategory(Category category) {
		// TODO Auto-generated method stub
		return categoryDao.UpdateCategory(category);
	}

	@Override
	public Category getCategoryById(int idCate) {
		// TODO Auto-generated method stub
		return categoryDao.getCategoryById(idCate);
	}
}
