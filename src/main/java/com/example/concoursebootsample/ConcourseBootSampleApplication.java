package com.example.concoursebootsample;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class ConcourseBootSampleApplication {

	public static void main(String[] args) {
		SpringApplication.run(ConcourseBootSampleApplication.class, args);
	}

	@RequestMapping("/")
    public String index() {
        return "Greetings from Spring Boot!";
    }
}
