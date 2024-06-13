package com.govt.voting.entity;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.TemporalType;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@NoArgsConstructor
@Data
@ToString
public class Voter {
	@Id
	private String emailid;
	private String aadharno;
	private String address;
	private String dob;
	private String firstname;
	private String gender;
	private String lastname;
	private String mobileno;
	private String panno;
	private String username;
	private String password;
	private String id;
	private String status;
}
