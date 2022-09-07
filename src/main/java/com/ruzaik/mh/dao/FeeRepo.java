package com.ruzaik.mh.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ruzaik.mh.model.Fee;

public interface FeeRepo extends JpaRepository<Fee, Integer> {

	
}
