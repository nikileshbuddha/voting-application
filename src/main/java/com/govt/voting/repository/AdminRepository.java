package com.govt.voting.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.govt.voting.entity.Admin;

public interface AdminRepository extends JpaRepository<Admin, String> {

}
