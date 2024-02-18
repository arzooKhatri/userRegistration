package com.registration.user.readmodel.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.registration.user.readmodel.model.Registration;

@Repository
public interface RegistrationRepository extends JpaRepository<Registration, Long> {
	
}