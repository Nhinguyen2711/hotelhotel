/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.service;

import com.hotel.entity.Room;
import java.util.Date;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 *
 * @author Administrator
 */
@Service
public interface RoomServiceIF {

    public List<Room> getAllRoom();

    public List<Room> searchAvailableRoom(int roomTypeId, String checkInDate, String checkOutDate);

    public Room findRoomId(int id);

    public void saveRoom(Room room);

    public void deleteRoom(int roomid);

    public Room getRoom(int roomid);
}
