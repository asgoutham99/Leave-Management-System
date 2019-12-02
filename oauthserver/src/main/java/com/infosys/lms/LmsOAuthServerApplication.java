package com.infosys.lms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class LmsOAuthServerApplication {

	public static void main(String[] args) {
		SpringApplication.run(LmsOAuthServerApplication.class, args);
	}

}
