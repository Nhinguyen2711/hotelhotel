/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.service;

import com.hotel.entity.Room;
import com.hotel.repository.RoomRepository;
import com.hotel.repository.RoomTypeRepository;
import java.util.Date;
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
public class RoomService implements RoomServiceIF{
    
    @Autowired
    RoomRepository roomRepository;
        @Autowired
    RoomTypeRepository roomTypeRepository;

    @Override
    public List<Room> getAllRoom() {
        return roomRepository.findAlllRoom();
    }


    @Override
    public List<Room> searchAvailableRoom(int roomTypeId, String checkInDate, String checkOutDate) {
        return roomRepository.searchAvailableRoom(roomTypeId, checkInDate, checkOutDate);
    }

    @Override
    public Room findRoomId(int id) {
        return roomRepository.findById(id).get();
    }
    @Override
    public void saveRoom(Room room) {
        ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
        Set<ConstraintViolation<Room>> violations = factory.getValidator().validate(room);
        if (violations.isEmpty()) {
  
            roomRepository.save(room);
        } else {
            System.out.println("validate wrong, do not execute database script");
        }
    }

    @Override
    public void deleteRoom(int roomid) {
        roomRepository.deleteById(roomid);
    }

    @Override
    public Room getRoom(int roomid) {
        Optional<Room> rooms = roomRepository.findById(roomid);
        return rooms.isPresent() ? rooms.get() : null;
    }

    @Override
    public Room getRoomByRoomNumber(int roomnumber) {
        Room room = roomRepository.findByroomnumber(roomnumber);
        return room;
    }
}
