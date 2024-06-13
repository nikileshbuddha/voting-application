package com.govt.voting.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.govt.voting.dao.AdminDao;
import com.govt.voting.dao.CandidateDao;
import com.govt.voting.dao.VoterDao;
import com.govt.voting.entity.Admin;
import com.govt.voting.entity.Candidate;
import com.govt.voting.entity.Voter;

@Controller
public class AdminController 
{
	@Autowired
	private AdminDao adminDao;
	@Autowired
	private CandidateDao cDao;
	@Autowired
	private VoterDao vDao;
	
	@RequestMapping("/loginAdmin")
	public String loginAdmin(String email,String password,Model model)
	{
		boolean admin = adminDao.validateAdmin(email,password);
		if (admin) {
			Admin ad = adminDao.getAdmin(email);
			List<Candidate> candidates = cDao.getAllCandidates();
			model.addAttribute("candList", candidates);
			model.addAttribute("admin", ad);
			return "AdminHome";
		} else {
			model.addAttribute("adminloginstatus", "<h2 style='color:red;'>***INVALID ADMIN CREDENTAILS***</h2>");
			return "AdminSignin";
		}
	}
	
	@RequestMapping("/viewAdmins")
	public String viewAdmins(Model model)
	{
		List<Admin> list = adminDao.viewAllAdmins();
		model.addAttribute("data", list);
		return "ViewAdmins";
	}
	@RequestMapping("/viewCandidates")
	public String viewCandidates(Model model)
	{
		List<Candidate> candidates = cDao.getAllCandidates();
		model.addAttribute("candList", candidates);
		return "ViewCandidates";
	}
	
	@RequestMapping("/viewVoters")
	public String viewVoters(Model model)
	{
		List<Voter> vList =	vDao.getAllVoters();
		model.addAttribute("voterList", vList);
		return "ViewVoters";
	}
	
}
