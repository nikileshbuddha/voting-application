package com.govt.voting.dao;

import java.util.List;

import com.govt.voting.entity.Admin;

public interface AdminDao 
{
	public boolean validateAdmin(String email, String password);

	public List<Admin> viewAllAdmins();

	public Admin getAdmin(String email);
}
