package com.govt.voting.dao;

import java.util.List;
import java.util.Optional;

import org.hibernate.annotations.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.govt.voting.entity.Admin;
import com.govt.voting.repository.AdminRepository;

@Component
public class AdminDaoImpl implements AdminDao 
{
	@Autowired
	private AdminRepository adminRepo;
	
	@Override
	public boolean validateAdmin(String email, String password) 
	{
		Optional<Admin> opt = adminRepo.findById(email);
		if (opt.isPresent()) {
			Admin admin = opt.get();
			if (admin.getPassword().equals(password)) {
				return true;
			}
		} 
		return false;
	}
	
	@Override
	public Admin getAdmin(String email) 
	{
		return adminRepo.findById(email).get();
	}
	
	@Override
	public List<Admin> viewAllAdmins() 
	{
		List<Admin> list = adminRepo.findAll();
		return list;
	}

}
