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
public class Admin 
{
	private String username;
	private String password;
	@Id
	private String email;
	private String phone;
}
