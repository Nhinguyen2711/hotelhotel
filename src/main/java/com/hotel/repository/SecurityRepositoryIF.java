/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.repository;

import com.hotel.entity.Employee;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Nhi
 */
@Repository
public interface SecurityRepositoryIF extends CrudRepository<Employee, Integer> {

    public Employee findByUsername(String username);
    
    
    

}
