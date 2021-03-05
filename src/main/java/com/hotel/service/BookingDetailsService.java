/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.service;

import com.hotel.entity.BookingDetails;
import com.hotel.repository.BookingDetailsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public class BookingDetailsService implements BookingDetailsServiceIF{

    @Autowired
    private BookingDetailsRepository bookingDetailsRepository;
    
    @Override
    public BookingDetails save(BookingDetails bookingDetails) {
        return  bookingDetailsRepository.save(bookingDetails);
    }

    @Override
    public BookingDetails getBookingDetailsByRoomid(int roomid) {
    return   bookingDetailsRepository.findByRoomid(roomid);
    }
    
}
