package com.wip.jenk;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class JenkApplication {

	public static void main(String[] args) {
		SpringApplication.run(JenkApplication.class, args);
		System.out.println("Hello World form Spring Boot to Jenkins!");
	}

}
