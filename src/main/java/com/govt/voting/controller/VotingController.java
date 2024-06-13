package com.govt.voting.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.govt.voting.dao.AdminDao;
import com.govt.voting.dao.VoterDao;
import com.govt.voting.dao.VoterDaoImpl;
import com.govt.voting.entity.Candidate;
import com.govt.voting.entity.Voter;

@Controller
public class VotingController 
{
	@Autowired
	private VoterDao dao;
	
	@RequestMapping("/displayHome")
	public String displayHome()
	{
		return "index";
	}
	
	@RequestMapping("/signup")
	public String signup(Voter voter,Model model)
	{
		voter.setStatus("Not voted");
		dao.addVoter(voter);
		if (model.addAttribute("message", "Registration Successfully...!!!!") != null) {
			return "NewVoterRegistration";
		} else {
			model.addAttribute("error", "Registration not Successfully...!!!!");
		}
		return "NewVoterRegistration";
	}
	
	@RequestMapping("/signin")
	@PostMapping("signin")
	public String validateVoter(String emailid,String password,Model model)
	{
		Voter voter = dao.validateVoter(emailid,password);
		if (voter!=null) 
		{
			if (voter.getPassword().equals(password)) 
			{
				Voter vtr = dao.getVoter(emailid);
				List<Candidate> candidates = dao.getAllCandidates();
				model.addAttribute("listofcand", candidates);
				model.addAttribute("voter", vtr);
				return "VoterHome";
			}
			else 
			{
				model.addAttribute("loginstatus", "In-valid Password..!!");
				return "VoterSignin";
			}
		}
		else
		{
			model.addAttribute("loginstatus", "In-valid email-id & Password...!!!");
			return "VoterSignin";
		}
	}
	
	@RequestMapping("/voterDelete")
	public String voterDelete(String emailid,Model model)
	{
		int voter = dao.deleteVoter(emailid);
		if (voter>0) 
		{
			model.addAttribute("deletemsg", "Voter Deleted Successfully...!!!");
			model.addAttribute("voterList", dao.getAllVoters());
		}
		return "ViewVoters";
	}
	
	@RequestMapping("/editVoterPage")
	public String editVoterPage()
	{
		return "EditVoter";
	}
	
	@RequestMapping("/editVoter")
	public String editVoter(Voter voter,Model model)
	{
		boolean edit = dao.editVoter(voter);
		if (edit) {
			model.addAttribute("editmsg", "Profile edit successfully");
		}
		return "ViewVoters";
	}
	
}
