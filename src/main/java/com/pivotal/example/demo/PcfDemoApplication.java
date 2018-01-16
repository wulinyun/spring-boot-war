package com.pivotal.example.demo;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@EnableAutoConfiguration
@SpringBootApplication
@ComponentScan
public class PcfDemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(PcfDemoApplication.class, args);
	}
}
