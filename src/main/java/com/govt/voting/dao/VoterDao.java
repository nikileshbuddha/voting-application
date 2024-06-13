package com.govt.voting.dao;

import java.util.List;

import com.govt.voting.entity.Candidate;
import com.govt.voting.entity.Voter;

public interface VoterDao 
{
	public void addVoter(Voter voter);

	public Voter validateVoter(String emailid, String password);

	public Voter getVoterValidation(String emailid);

	public List<Candidate> getAllCandidates();

	public void changeVoteStatus(String voter);

	public Voter getVoter(String voter);

	public List<Voter> getAllVoters();

	public int deleteVoter(String emailid);

	public boolean editVoter(Voter voter);

}
