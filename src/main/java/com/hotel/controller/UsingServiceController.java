/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.controller;

import com.hotel.entity.Booking;
import com.hotel.entity.BookingDetails;
import com.hotel.entity.Charge;
import com.hotel.entity.Room;
import com.hotel.entity.Services;
import com.hotel.service.BookingDetailsService;
import com.hotel.service.BookingService;
import com.hotel.service.RoomService;
import com.hotel.service.ServiceService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
@RequestMapping("/user")
public class UsingServiceController {

    @Autowired
    BookingService bookingService;
    
    @Autowired
    RoomService roomService;
    
    @Autowired
    ServiceService serviceService;
    
    @Autowired
    BookingDetailsService bookingDetailsService;
    
    @GetMapping(value = "/usingService")
    public String usingService(HttpServletRequest request, @RequestParam("bookingId") int bookingId, Model model) {    
        Booking booking = bookingService.getBooking(bookingId);
        List<Charge> charges = booking.getCharges();
        int page = ServletRequestUtils.getIntParameter(request, "p", 0);
        PagedListHolder pagedListHolder = new PagedListHolder(charges);
        pagedListHolder.setPage(page);
        pagedListHolder.setPageSize(10);
        model.addAttribute("pagedListCharge", pagedListHolder);
        return "CustomerUsingService";
    }
    @GetMapping(value = "formAddService")
    public String formAddService(Model model){
        Charge charge = new Charge();
        List<Services> service = serviceService.getAllService();
        PagedListHolder pagedListHolder = new PagedListHolder(service);
        model.addAttribute("pagedListService", pagedListHolder);
        model.addAttribute("charge", charge);
        return "AdminFormAddService";
    }
    
    @PostMapping(value = "addService")
    public String addService(@ModelAttribute("charge") @Valid Charge charge, BindingResult  result){
    if(result.hasErrors()){
    return "AdminFormAddService";
    }
    Room room = charge.getRoom();
    int roomNumber = room.getRoomnumber();
    Room room1 = roomService.getRoomByRoomNumber(roomNumber);
    charge.setRoom(room1);
    
    Services service = charge.getService();
    String serviceName = service.getServiceName();
    Services service1 = serviceService.getServiceByServiceName(serviceName);
    charge.setService(service1);
    
    int roomid = room1.getRoomid();
//    BookingDetails bookingDetails = bookingDetailsService.getBookingDetailsByRoomid(roomid);
    String status = "STAYING";
    int bookingid = bookingService.getBookingByStatus(status, roomid);
    Booking booking = new Booking();
    

    return "CustomerUsingService";
    }
    

}
