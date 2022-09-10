package com.ruzaik.mh.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ruzaik.mh.model.Attendance;

public interface AttendaceRepo extends JpaRepository<Attendance, Integer> {

}
