/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.repository;

import com.hotel.entity.Services;
import org.springframework.data.repository.CrudRepository;

/**
 *
 * @author Nhi
 */
public interface ServiceRepository extends CrudRepository<Services, Integer>{
    
}
