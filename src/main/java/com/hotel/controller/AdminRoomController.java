/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.controller;

import com.hotel.entity.Room;
import com.hotel.entity.RoomType;
import com.hotel.service.RoomService;
import com.hotel.service.RoomTypeService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Nhi
 */
@Controller
@RequestMapping("/admin")
public class AdminRoomController {
    @Autowired
    RoomService roomService;
    @Autowired
    RoomTypeService roomTypeService;
    @GetMapping(value = "/")
    public String HomeAdmin(){
    return "AdminHome";
    }
    @GetMapping(value = "/Listroom")
    public String ListRoom(HttpServletRequest request, Model model){

        List<Room> rooms = new ArrayList<>();
        rooms = roomService.getAllRoom();
        PagedListHolder pagedListHolder = new PagedListHolder(rooms);
        int page = ServletRequestUtils.getIntParameter(request, "p", 0);
        pagedListHolder.setPage(page);
        pagedListHolder.setPageSize(10);
        model.addAttribute("pagedListRoom", pagedListHolder);
    return "AdminListRoom";
    }
    @GetMapping("/formRoom")
    public String formRoom(HttpServletRequest request, Model model) {
        List<RoomType> roomtype = roomTypeService.getAllRoomType();
        Room room = new Room();
        PagedListHolder pagedListHolder = new PagedListHolder(roomtype);
        model.addAttribute("pagedListRoomType", pagedListHolder);
        model.addAttribute("room", room);

        return "AdminFormRoom";
    } 
    
        @PostMapping("/addRoom")
    public String addRoom(@ModelAttribute("room") Room room) {
        RoomType roomtypeName = room.getRoomtype();
        String typename = roomtypeName.getTypename();
        RoomType roomtype = roomTypeService.getRoomTypeByTypename(typename);
        room.setRoomtype(roomtype);
        roomService.saveRoom(room);
        return "redirect:/admin/Listroom";
    }
        @GetMapping("/updateRoom")
    public String updateRoom(@RequestParam("roomid") int roomid, Model model) {
        Room room = roomService.getRoom(roomid);
        model.addAttribute("room", room);
        return "AdminFormRoom";
    }
    @GetMapping("/deleteRoom")
    public String deleteRoom(@RequestParam("roomid") int roomid){
    
    roomService.deleteRoom(roomid);
    return "redirect:/admin/Listroom";

}
    
    
    @GetMapping(value = "/Listroomtype")
    public String ListRoomType(HttpServletRequest request, Model model){

        List<RoomType> roomtype = new ArrayList<>();
        roomtype = roomTypeService.getAllRoomType();
        PagedListHolder pagedListHolder = new PagedListHolder(roomtype);
        int page = ServletRequestUtils.getIntParameter(request, "p", 0);
        pagedListHolder.setPage(page);
        pagedListHolder.setPageSize(10);
        model.addAttribute("pagedListRoomType", pagedListHolder);
    return "AdminListRoomType";
    }
    
    @GetMapping("/formRoomType")
    public String formRoomType(Model model) {
        RoomType roomtype = new RoomType();
        model.addAttribute("roomtype", roomtype);

        return "AdminFormRoomType";
    } 
    
        @PostMapping("/addRoomType")
    public String addRoomType(@ModelAttribute("roomtype") RoomType roomtype) {
        roomTypeService.saveRoomType(roomtype);
        return "redirect:/admin/Listroomtype";
    }
        @GetMapping("/updateRoomType")
    public String updateRoomType(@RequestParam("roomtypeid") int roomtypeid, Model model) {
        RoomType roomtype = roomTypeService.getRoomType(roomtypeid);
        model.addAttribute("roomtype", roomtype);
        return "AdminFormRoomType";
    }
    @GetMapping("/deleteRoomType")
    public String deleteRoomType(@RequestParam("roomtypeid") int roomtypeid){
    
    roomTypeService.deleteRoomType(roomtypeid);
    return "redirect:/admin/Listroomtype";

}
}
