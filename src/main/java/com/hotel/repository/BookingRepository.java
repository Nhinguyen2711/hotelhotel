/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.repository;

import com.hotel.entity.Booking;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Administrator
 */
@Repository
public interface BookingRepository extends CrudRepository<Booking, Integer>{
    @Query(value = "select * from booking where booking_uid = ?1", nativeQuery = true)
    Booking findByUid(String bookinguid);
    
    @Query(value = "select bookingid from bookingdetails join booking" +
" on bookingdetails.bookingid = booking.bookingid" +
" where status =?1 and roomid =?2", nativeQuery = true)
    public int getBookingByStatus(String status,int roomid);
}
