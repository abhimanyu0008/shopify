package com.jbk.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jbk.entity.User;
import com.jbk.servic.UserService;

@Controller
public class UserController {

	@Autowired
	private UserService service;
	
	 @GetMapping("/register")
	    public String showRegistrationForm(Model model) {
	        model.addAttribute("user", new User());
	        return "register";
	    }

	    @PostMapping("/register")
	    public String registerUser(@ModelAttribute("user") User user,
	                               @RequestParam("resume") MultipartFile resume,
	                               RedirectAttributes redirectAttributes, Model model) {
	        if (service.userExists(user.getUsername()) || service.emailExists(user.getEmail())) {
	            model.addAttribute("error", "Username or email already exists");
	            return "register";
	        }

	        // Save resume file
//	        if (!resume.isEmpty()) {
//	            String fileName = resume.getOriginalFilename();
//	            String uploadDir = "uploads/";
//	            File file = new File(uploadDir + fileName);
//	            try {
//	                resume.transferTo(file);
//	                user.setResume(null);
//	            } catch (IOException e) {
//	                e.printStackTrace();
//	            }
//	        }

	        service.register(user);
	        redirectAttributes.addFlashAttribute("success", "Registration successful!");
	        return "redirect:/login";
	    }

	    @GetMapping("/login")
	    public String showLoginForm(Model model) {
	        model.addAttribute("user", new User());
	        return "login";
	    }

	    @PostMapping("/login")
	    public String loginUser(@ModelAttribute("user") User user, Model model) {
	        User authenticatedUser = service.login(user.getUsername(), user.getPassword());
	        if (authenticatedUser == null) {
	            model.addAttribute("error", "Invalid username or password");
	            return "login";
	        }
	        return "redirect:/home";
	    }

	    @GetMapping("/home")
	    public String home() {
	        return "navbar";
	    }
}
