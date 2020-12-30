package com.myapp.spring;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication(scanBasePackages={"controller"})
@EntityScan(basePackages={"model"}) 
@EnableJpaRepositories(basePackages={"repository"}) 
public class Application {
        
	public static void main(String[] args) {
	    SpringApplication.run(Application.class, args);
	}

}
