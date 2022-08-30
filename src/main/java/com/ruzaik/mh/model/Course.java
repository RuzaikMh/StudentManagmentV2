package com.ruzaik.mh.model;

import javax.persistence.Entity;
import javax.persistence.Id;


@Entity
public class Course {
	
	@Id
	private String courseID;
	private String department;
	private String courseName;
	private String duration;
	private String lecture;
	
	public String getCourseID() {
		return courseID;
	}
	public void setCourseID(String courseID) {
		this.courseID = courseID;
	}
	public String getDepartment() {
		return department;
	}
	public void setDepartment(String department) {
		this.department = department;
	}
	public String getCourseName() {
		return courseName;
	}
	public void setCourseName(String courseName) {
		this.courseName = courseName;
	}
	public String getDuration() {
		return duration;
	}
	public void setDuration(String duration) {
		this.duration = duration;
	}
	public String getLecture() {
		return lecture;
	}
	public void setLecture(String lecture) {
		this.lecture = lecture;
	}
	@Override
	public String toString() {
		return "Course [courseID=" + courseID + ", department=" + department + ", courseName=" + courseName
				+ ", duration=" + duration + ", lecture=" + lecture + "]";
	}
	
}
