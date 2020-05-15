package com.ranjan.springboot.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class HelloWorldController {

	@GetMapping
	public String testResponse() {
		
		return "Hello World!";
	}
	
	@RequestMapping(value = "/hello", method = RequestMethod.GET)
	public String getRequest() {
		
		return "Welcome to Spring boot from Docker !!";
	}
}
