/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.service;

import com.hotel.entity.RoomType;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public interface RoomTypeServiceIF {
    public List<RoomType> getAllRoomType();
    public RoomType getRoomType(int roomtypeid);
    public void saveRoomType(RoomType roomtype);
    public void deleteRoomType(int roomtypeid);
    public RoomType getRoomTypeByTypename(String typename);
}
