package com.zjitc.service.imp;

import com.zjitc.dao.CategoryDao;
import com.zjitc.model.Category;
import com.zjitc.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class CategoryServiceImp implements CategoryService {

    @Autowired
    private CategoryDao dao;

    @Override
    public List<Category> findCategory() {
        return dao.findCategory();
    }
}
