/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.service;

import com.hotel.entity.Charge;
import com.hotel.entity.Services;
import com.hotel.repository.ChargeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Nhi
 */
@Service
public class ChargeService implements ChargeServiceIF{
    
    @Autowired
    ChargeRepository chargeRepository;

    @Override
    public void saveCharge(Charge charge) {
       chargeRepository.save(charge);
    }  
}
