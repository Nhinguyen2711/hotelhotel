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
import org.springframework.web.bind.annotation.PathVariable;
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
    public String formRoom(Model model) {
        Room room = new Room();
        model.addAttribute("room", room);

        return "AdminFormRoom";
    } 
    
        @PostMapping("/addRoom")
    public String addRoom(@ModelAttribute("room") Room room) {
        
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
}
