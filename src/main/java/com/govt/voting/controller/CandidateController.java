package com.govt.voting.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.govt.voting.dao.CandidateDao;
import com.govt.voting.dao.VoterDao;
import com.govt.voting.entity.Candidate;
import com.govt.voting.entity.Voter;

@Controller
public class CandidateController
{	
	@Autowired
	private CandidateDao dao;
	
	@RequestMapping("/addNewCandidate")
	public String addNewCandidate(Candidate cand,Model model)
	{
		String message = "Your Application is Rejected";
		if (cand.getAge()<24) 
		{
			message+=" bcoz Age is not matching...!!!";
		}
		else if (cand.getMonthlyincome()>10000) 
		{
			message+=" bcoz your monthly income is not matching...!!!";
		}
		else if (cand.getYearlyincome()>120000) 
		{
			message+=" bcoz your yearly income is not matching...!!!";
		}
		else if (cand.getCriminalbackground().equalsIgnoreCase("yes"))
		{
			message+=" bcoz your profile in crimanal background...!!!";
		}
		else if (cand.getTotalproperty()>10000000)
		{
			message+=" bcoz your total income is not matching...!!!";
		}
		else
		{
			message = "Your Application is Approved...!!!";
			dao.addCandidate(cand);
			model.addAttribute("check", true);
			model.addAttribute("message", message);
			return "ApplyCandidate";
		}
		model.addAttribute("message", message);
		model.addAttribute("check", false);
		return "ApplyCandidate";
	}
	
	@Autowired
	private VoterDao vDao;
	
	@RequestMapping("/addVote")
	public String addVote(String candidate,String voter,Model model)
	{
		dao.doVoting(candidate);
		vDao.changeVoteStatus(voter);
		Candidate can = dao.getCandidate(candidate);
		Voter v = vDao.getVoter(voter);
		model.addAttribute("name", can.getFirstname());
		model.addAttribute("voter", v);
		model.addAttribute("listofcand", dao.getAllCandidates());
		return "VoterHome";
	}
}
