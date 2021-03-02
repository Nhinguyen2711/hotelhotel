/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.controller;

import com.hotel.entity.Booking;
import com.hotel.entity.Charge;
import com.hotel.service.BookingService;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Nhi
 */
@Controller
@RequestMapping("/admin")
public class UsingServiceController {

    @Autowired
    BookingService bookingService;

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

}
