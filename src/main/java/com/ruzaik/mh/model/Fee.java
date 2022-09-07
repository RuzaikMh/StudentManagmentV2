package com.ruzaik.mh.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Fee {

	@Id
	@GeneratedValue
	private int id;
	private String registrationNumber;
	private String paymentId;
	private String paymentAmount;
	private String purposeOfPayment;
	
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
	public String getPaymentId() {
		return paymentId;
	}
	public void setPaymentId(String paymentId) {
		this.paymentId = paymentId;
	}
	public String getPaymentAmount() {
		return paymentAmount;
	}
	public void setPaymentAmount(String paymentAmount) {
		this.paymentAmount = paymentAmount;
	}
	public String getPurposeOfPayment() {
		return purposeOfPayment;
	}
	public void setPurposeOfPayment(String purposeOfPayment) {
		this.purposeOfPayment = purposeOfPayment;
	}
	@Override
	public String toString() {
		return "Fee [id=" + id + ", registrationNumber=" + registrationNumber + ", paymentId=" + paymentId
				+ ", paymentAmount=" + paymentAmount + ", purposeOfPayment=" + purposeOfPayment + "]";
	}
	
}
