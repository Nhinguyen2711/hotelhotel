/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.service;

import com.hotel.entity.Booking;
import com.hotel.repository.BookingRepository;
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
 * @author Administrator
 */
@Service
public class BookingService implements BookingServiceIF{

    @Autowired
    BookingRepository bookingRepository;
    
    @Override
    public Booking save(Booking booking) {
        return bookingRepository.save(booking);
    }

    @Override
    public Booking findByUid(String bookinguid) {
        return bookingRepository.findByUid(bookinguid);
    }
            @Override
    public List<Booking> getAllBooking() {
        return (List<Booking>) bookingRepository.findAll();
    }

    @Override
    public void saveBooking(Booking booking) {
        ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
        Set<ConstraintViolation<Booking>> violations = factory.getValidator().validate(booking);
        if (violations.isEmpty()) {
            bookingRepository.save(booking);
        } else {
            System.out.println("validate wrong, do not execute database script");
        }
    }

    @Override
    public void deleteBooking(int bookingID) {
        bookingRepository.deleteById(bookingID);
    }

    @Override
    public Booking getBooking(int bookingID) {
        Optional<Booking> booking = bookingRepository.findById(bookingID);
        return booking.isPresent() ? booking.get() : null;
    }
    
}
