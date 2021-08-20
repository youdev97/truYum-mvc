package com.cognizant.truyum.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cognizant.truyum.dao.CartDao;
import com.cognizant.truyum.dao.CartEmptyException;
import com.cognizant.truyum.model.Cart;

@Service
public class CartService {

	@Autowired
	private CartDao cartDao;

	public Cart getAllCartItems(long userId) throws CartEmptyException {
		return cartDao.getAllCartItems(userId);
	}

	public void setCartDao(CartDao cartDao) {
		this.cartDao = cartDao;
	}

	public void addCartitem(long userId, long menuItemId) {
		cartDao.addCartItem(userId, menuItemId);
	}

	public void removeCartItem(long userId, long menuItemId) {
		cartDao.removeCartItem(userId, menuItemId);
	}
}
