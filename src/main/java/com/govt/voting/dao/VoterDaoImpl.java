package com.govt.voting.dao;

import java.security.SecureRandom;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.govt.voting.entity.Candidate;
import com.govt.voting.entity.Voter;
import com.govt.voting.repository.CandidateRepository;
import com.govt.voting.repository.VoterRepository;

import jakarta.transaction.Transactional;

@Component
public class VoterDaoImpl implements VoterDao {
	@Autowired
	private VoterRepository voterRepo;

	private static String generateRandomAlphanumeric(int length) {
		String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		StringBuilder sb = new StringBuilder(length);
		SecureRandom random = new SecureRandom();
		for (int i = 0; i < length; i++) {
			int index = random.nextInt(characters.length());
			sb.append(characters.charAt(index));
		}
		return sb.toString();
	}

	@Override
	public void addVoter(Voter voter) 
	{
		int length = 10 ;
		voter.setId(generateRandomAlphanumeric(length));
		voterRepo.save(voter);
	}

	@Override
	public Voter validateVoter(String emailid, String password) {
		Optional<Voter> opt = voterRepo.findById(emailid);
		if (opt.isPresent()) {
			return opt.get();
		}
		return null;
	}

	@Override
	public Voter getVoterValidation(String emailid) {
		Voter voter = voterRepo.findById(emailid).get();
		return voter;

	}

	@Autowired
	private CandidateRepository candRepo;

	@Override
	public List<Candidate> getAllCandidates() {
		return candRepo.findAll();
	}

	@Override
	public void changeVoteStatus(String voter) {
		Voter vtr = voterRepo.findById(voter).get();
		vtr.setStatus("Voted");
		voterRepo.save(vtr);
	}

	@Override
	public Voter getVoter(String email) {
		Voter vtr = voterRepo.findById(email).get();
		if (vtr != null) {
			return vtr;
		}
		return null;
	}

	@Override
	public List<Voter> getAllVoters() {
		return voterRepo.findAll();
	}
	
	@Override
	@Transactional
	public int deleteVoter(String emailid) 
	{
		int update = voterRepo.deleteByEmailid(emailid);
		return update;
	}
	
	@Override
	public boolean editVoter(Voter voter) 
	{
		Voter v = new Voter();
		v.setFirstname(voter.getFirstname());
		v.setLastname(voter.getLastname());
		v.setDob(voter.getDob());
		v.setEmailid(voter.getEmailid());
		v.setMobileno(voter.getMobileno());
		v.setAddress(voter.getAddress());
		v.setUsername(voter.getUsername());
		v.setPassword(voter.getPassword());
		
		Voter save = voterRepo.save(v);
		if (save!=null) {
			return true;
		}
		return false;
	}

}
