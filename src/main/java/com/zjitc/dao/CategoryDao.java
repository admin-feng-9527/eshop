package com.zjitc.dao;


import com.zjitc.model.Category;
import java.util.List;

public interface CategoryDao {
  List<Category> findCategory();
}
