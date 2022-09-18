package com.ruzaik.mh.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ruzaik.mh.model.Fee;

public interface FeeRepo extends JpaRepository<Fee, String> {

	@Query("from Fee where registrationNumber like %?1%")
	List<Fee> findByStudentRegistrationNumberLike(String search);
	
	@Query("from Fee order by date DESC")
	List<Fee> orderByDate();
	
	@Query("select year(date),month(date),sum(paymentAmount) from Fee group by year(date),month(date) order by year(date),month(date)")
	List<String> totalSalesByMonths();
}
