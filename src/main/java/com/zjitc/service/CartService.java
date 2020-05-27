package com.zjitc.service;

import com.zjitc.model.CartItem;
import java.util.List;

public interface CartService {
 void addcart(Integer uid, Integer pid, Integer count);

 List<CartItem> findAll(Integer uid);

 void delete(Integer pid);

 void clearCart(Integer uid);

 void update(Integer pid, Integer num);

 List<CartItem> findByUid(Integer uid);
}
