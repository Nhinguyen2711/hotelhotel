/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.service;

import com.hotel.entity.Booking;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public interface BookingServiceIF {
    public Booking save(Booking booking);
    public Booking findByUid(String bookinguid);
        public List<Booking> getAllBooking();
    public void saveBooking(Booking booking);
    public void deleteBooking(int bookingId);
    public Booking getBooking(int bookingId);
}
