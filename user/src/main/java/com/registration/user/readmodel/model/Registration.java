package com.registration.user.readmodel.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "registrations")
public class Registration {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	private String full_name;
	private String gender;
	private String address;
	private String city;
	private String pin;
	private String state;
	private String country;
	private String email;
	private String contact;
	private String education_qualification;
	private String designation;

	public Registration() {
	}

	public Registration(String full_name, String gender, String address, String city, String pin, String state,
			String country, String email, String contact, String education_qualification, String designation) {
		this.full_name = full_name;
		this.gender = gender;
		this.address = address;
		this.city = city;
		this.pin = pin;
		this.state = state;
		this.country = country;
		this.email = email;
		this.contact = contact;
		this.education_qualification = education_qualification;
		this.designation = designation;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getEducation_qualification() {
		return education_qualification;
	}

	public void setEducation_qualification(String education_qualification) {
		this.education_qualification = education_qualification;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	@Override
	public String toString() {
		return "Registration{" + "id=" + id + ", full_name='" + full_name + '\'' + ", gender='" + gender + '\''
				+ ", address='" + address + '\'' + ", city='" + city + '\'' + ", pin='" + pin + '\'' + ", state='"
				+ state + '\'' + ", country='" + country + '\'' + ", email='" + email + '\'' + ", contact='" + contact
				+ '\'' + ", education_qualification='" + education_qualification + '\'' + ", designation='"
				+ designation + '\'' + '}';
	}

}
