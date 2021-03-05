/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.service;

import com.hotel.entity.Employee;
import com.hotel.repository.EmployeeRepository;
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
public class EmployeeService implements EmployeeServiceIF {

    @Autowired
    EmployeeRepository employeeRepository;

    @Override
    public List<Employee> getAllEmployee() {
        return (List<Employee>) employeeRepository.findAll();
    }

    @Override
    public void saveEmployee(Employee employee) {
        ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
        Set<ConstraintViolation<Employee>> violations = factory.getValidator().validate(employee);
        if (violations.isEmpty()) {
            employeeRepository.save(employee);
        } else {
            System.out.println("validate wrong, do not execute database script");
        }
    }

    @Override
    public void deleteEmployee(int empId) {
        employeeRepository.deleteById(empId);
    }

    @Override
    public Employee getEmployee(int empId) {
        Optional<Employee> employee = employeeRepository.findById(empId);
        return employee.isPresent() ? employee.get() : null;
    }

}
