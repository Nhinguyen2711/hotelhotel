/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.service;

import com.hotel.entity.Room;
import com.hotel.entity.RoomType;
import com.hotel.repository.RoomTypeRepository;
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
 */@Service
public class RoomTypeService implements RoomTypeServiceIF{
    @Autowired
    RoomTypeRepository roomTypeRepository;

    @Override
    public List<RoomType> getAllRoomType() {
        return roomTypeRepository.findAllRoomType();
    }

    @Override
    public RoomType getRoomType(int roomtypeid) {
        Optional<RoomType> roomtype = roomTypeRepository.findById(roomtypeid);
        return roomtype.isPresent() ? roomtype.get() : null;
    }

    @Override
    public void saveRoomType(RoomType roomtype) {
        ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
        Set<ConstraintViolation<RoomType>> violations = factory.getValidator().validate(roomtype);
        if (violations.isEmpty()) {
  
            roomTypeRepository.save(roomtype);
        } else {
            System.out.println("validate wrong, do not execute database script");
        }
    }

    @Override
    public void deleteRoomType(int roomtypeid) {
      roomTypeRepository.deleteById(roomtypeid);
    }

    @Override
    public RoomType getRoomTypeByTypename(String typename) {
        RoomType roomtype = roomTypeRepository.findByTypename(typename);
      
      return roomtype;
    }
}
