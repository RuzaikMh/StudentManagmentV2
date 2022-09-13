package com.ruzaik.mh.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Attendance {

	@Id
	@GeneratedValue
	private int id;
	private String registrationNumber;
	private String date;
	private String attendance;
	private String course;
	
	public Attendance() {}
	
	public Attendance(String registrationNumber, String date, String attendance, String course) {
		super();
		this.registrationNumber = registrationNumber;
		this.date = date;
		this.attendance = attendance;
		this.course = course;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRegistrationNumber() {
		return registrationNumber;
	}
	public void setRegistrationNumber(String registrationNumber) {
		this.registrationNumber = registrationNumber;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getAttendance() {
		return attendance;
	}
	public void setAttendance(String attendance) {
		this.attendance = attendance;
	}
	public String getCourse() {
		return course;
	}
	public void setCourse(String course) {
		this.course = course;
	}
	@Override
	public String toString() {
		return "attendance [id=" + id + ", registrationNumber=" + registrationNumber + ", date=" + date
				+ ", attendance=" + attendance + ", course=" + course + "]";
	}
}
