/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.repository;

import com.hotel.entity.BookingDetails;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Administrator
 */
@Repository
public interface BookingDetailsRepository extends CrudRepository<BookingDetails, Integer>{
    @Query(value = "select * from bookingdetails where roomid = ?1", nativeQuery = true)
    public BookingDetails findByRoomid(int roomid);
   
}
