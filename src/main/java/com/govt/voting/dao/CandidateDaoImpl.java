package com.govt.voting.dao;

import java.util.List;
import java.util.Optional;

import org.hibernate.annotations.Comment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.govt.voting.entity.Candidate;
import com.govt.voting.repository.CandidateRepository;

@Component
public class CandidateDaoImpl implements CandidateDao 
{
	@Autowired
	private CandidateRepository candRepo;
	
	@Override
	public void addCandidate(Candidate cand) 
	{
		candRepo.save(cand);
	}
	
	@Override
	public void doVoting(String candidate) 
	{
		Candidate can = candRepo.findById(candidate).get();
		can.setVotes(can.getVotes()+1);
		candRepo.save(can);
	}
	
	@Override
	public Candidate getCandidate(String candidate) 
	{
		Candidate candi = candRepo.findById(candidate).get();
		return candi;
	}
	
	@Override
	public List<Candidate> getAllCandidates() 
	{
		return candRepo.findAll();
	}
	
}
