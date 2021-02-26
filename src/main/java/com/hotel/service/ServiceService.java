/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.service;

import com.hotel.entity.Services;
import com.hotel.repository.ServiceRepository;
import java.util.List;
import java.util.Optional;
import java.util.Set;
import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.ValidatorFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Nhi
 */
@Service
public class ServiceService implements ServiceServiceIF {
    
    @Autowired
    ServiceRepository serviceRepository;

    @Override
    public List<Services> getAllService() {
       return (List<Services>) serviceRepository.findAll();
    }

    @Override
    public void saveService(Services services) {
               ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
        Set<ConstraintViolation<Services>> violations = factory.getValidator().validate(services);
        if (violations.isEmpty()) {
            serviceRepository.save(services);
        } else {
            System.out.println("validate wrong, do not execute database script");
        }
    }

    @Override
    public void deleteService(int serviceId) {
       serviceRepository.deleteById(serviceId);
    }

    @Override
    public Services getService(int serviceId) {
        Optional<Services> servicess = serviceRepository.findById(serviceId);
        return servicess.isPresent() ? servicess.get() : null;
    }
    
}
