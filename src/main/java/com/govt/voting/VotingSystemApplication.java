package com.govt.voting;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

@SpringBootApplication
public class VotingSystemApplication {

	public static void main(String[] args) {
		ConfigurableApplicationContext context = SpringApplication.run(VotingSystemApplication.class, args);
		
	}

}
