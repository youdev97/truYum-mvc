package com.cognizant.truyum.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cognizant.truyum.model.Cart;

@Repository
public interface CartRepository extends JpaRepository<Cart, Long> {

}
