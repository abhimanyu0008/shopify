package com.jbk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class Demo {
	@GetMapping("/hello")
	public String getC() {
		return "index";
	}

}
