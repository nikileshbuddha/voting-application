package com.govt.voting.dao;

import java.util.List;

import com.govt.voting.entity.Candidate;

public interface CandidateDao 
{

	public void addCandidate(Candidate cand);

	public void doVoting(String candidate);

	public Candidate getCandidate(String candidate);

	public List<Candidate> getAllCandidates();

}
