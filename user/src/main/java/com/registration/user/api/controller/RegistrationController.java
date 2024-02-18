package com.registration.user.api.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.registration.user.readmodel.model.Registration;
import com.registration.user.service.RegistrationService;

@Controller
public class RegistrationController {

	@Autowired
	private RegistrationService registrationService;

	@GetMapping("/register")
	public String showRegistrationForm(Model model, HttpServletRequest request) {
		request.setAttribute("message", "Record Inserted Successfully");
		model.addAttribute("registration", new Registration());
		return "Registration";
	}

	@PostMapping("/register")
	public String submitRegistrationForm(@ModelAttribute("registration") Registration registration,
			HttpServletRequest request) {
		try {
			registrationService.saveRegistration(registration);
			request.setAttribute("message", "Record Inserted Successfully");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("message", "Record Not Inserted");
		}
		return "Registration";
	}

	@GetMapping("/update/{id}")
	public String showUpdateForm(@PathVariable("id") Long id, Model model, HttpServletRequest request) {
		Registration registration = registrationService.getRegistrationById(id);
		request.setAttribute("message", "Record Updated Successfully");
		model.addAttribute("registration", registration);
		return "UpdateRegistration";
	}

	@PostMapping("/update/{id}")
	public String submitUpdateForm(@PathVariable("id") Long id,
			@ModelAttribute("registration") Registration updatedRegistration, Model model, HttpServletRequest request) {
		Registration existingRegistration = registrationService.getRegistrationById(id);
		if (existingRegistration == null) {
			return "error";
		}

		// Update existing registration with new data
		existingRegistration.setFull_name(updatedRegistration.getFull_name());
		existingRegistration.setGender(updatedRegistration.getGender());
		existingRegistration.setAddress(updatedRegistration.getAddress());
		existingRegistration.setCity(updatedRegistration.getCity());
		existingRegistration.setPin(updatedRegistration.getPin());
		existingRegistration.setState(updatedRegistration.getState());
		existingRegistration.setCountry(updatedRegistration.getCountry());
		existingRegistration.setEmail(updatedRegistration.getEmail());
		existingRegistration.setContact(updatedRegistration.getContact());
		existingRegistration.setEducation_qualification(updatedRegistration.getEducation_qualification());
		existingRegistration.setDesignation(updatedRegistration.getDesignation());
		try {
			registrationService.saveRegistration(existingRegistration);
			request.setAttribute("message", "Record Updated Successfully");
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("message", "Record Not Updated");
		}
		return "redirect:/registrations";
	}
	
	@GetMapping("/registrations")
	public String showRegistrations(HttpServletRequest request, @RequestParam(defaultValue = "0") long page) {
	    try {
	        int pageSize = 8; // Number of registrations per page
	        long totalRecords = registrationService.countRegistrations();
	        int totalPages = (int) Math.ceil((double) totalRecords / pageSize);
	        
	        if (page == 0) {
	        	page=0;
	        }else {
	        	page=page-1;
	        }
	        
	        // Fetch registrations for the current page
	        List<Registration> registrations = registrationService.getRegistrations(page, pageSize);
	        request.setAttribute("totalPages", totalPages);
	        request.setAttribute("registrations", registrations);
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return "Registrations";
	}


	@GetMapping("/delete/{id}")
	public String deleteRegistration(@PathVariable Long id) {
		registrationService.deleteRegistration(id);
		return "redirect:/registrations";
	}
}
