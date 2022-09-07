package com.ruzaik.mh.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ruzaik.mh.model.Fee;

public interface FeeRepo extends JpaRepository<Fee, Integer> {

	@Query("from Fee where registrationNumber like %?1%")
	List<Fee> findByStudentRegistrationNumberLike(String search);

}
