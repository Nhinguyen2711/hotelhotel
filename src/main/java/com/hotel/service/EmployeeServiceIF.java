/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.service;

import com.hotel.entity.Employee;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 *
 * @author Nhi
 */
@Service
public interface EmployeeServiceIF {
    public List<Employee> getAllEmployee();
    public void saveEmployee(Employee employee);
    public void deleteEmployee(int empId);
    public Employee getEmployee(int empId);
    
}
