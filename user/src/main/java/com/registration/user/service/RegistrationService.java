package com.registration.user.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

import com.registration.user.readmodel.model.Registration;
import com.registration.user.readmodel.repo.RegistrationRepository;

@Service
public class RegistrationService {

	@Autowired
	private RegistrationRepository registrationRepository;

	public Registration saveRegistration(Registration registration) {
		return registrationRepository.save(registration);
	}

	public Registration getRegistrationById(Long id) {
		Optional<Registration> registration = registrationRepository.findById(id);
		return registration.orElse(null);
	}

	public List<Registration> getRegistrations(long page, int pageSize) {
		Pageable pageable = PageRequest.of((int) page, pageSize, Sort.by("id").descending());
		Page<Registration> registrationsPage = registrationRepository.findAll(pageable);
		return registrationsPage.getContent();
	}

	public long countRegistrations() {
		return registrationRepository.count();
	}

	public void deleteRegistration(Long id) {
		registrationRepository.deleteById(id);
	}
}