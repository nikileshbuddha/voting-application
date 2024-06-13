package com.govt.voting.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@NoArgsConstructor
@Data
@ToString
public class Candidate 
{
	private String firstname;
	private String lastname;
	private String dob;
	private String gender;
	private int age;
	private String aadhar;
	private String pan;
	@Id
	private String emailid;
	private String mobileno;
	private String address;
	private double monthlyincome;
	private double yearlyincome;
	private double totalproperty;
	private String criminalbackground;
	private int votes;
}
