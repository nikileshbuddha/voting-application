package com.govt.voting.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.govt.voting.entity.Candidate;

public interface CandidateRepository extends JpaRepository<Candidate, String> {

}
