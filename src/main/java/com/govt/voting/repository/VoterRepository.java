package com.govt.voting.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.govt.voting.entity.Voter;
@Repository
public interface VoterRepository extends JpaRepository<Voter, String> 
{
	public int deleteByEmailid(String emailid);
}
