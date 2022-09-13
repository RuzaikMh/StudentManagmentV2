package com.ruzaik.mh.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ruzaik.mh.model.Attendance;
import com.ruzaik.mh.model.Student;

public interface AttendaceRepo extends JpaRepository<Attendance, Integer> {

	@Query("from Attendance where registrationNumber like %?1%")
	List<Attendance> findByRegistrationNumberLike(String search);

}
