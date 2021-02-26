/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.service;

import com.hotel.entity.Services;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 *
 * @author Nhi
 */
@Service
public interface ServiceServiceIF {
    public List<Services> getAllService();
    public void saveService(Services services);
    public void deleteService(int serviceId);
    public Services getService(int serviceId);
    
}
