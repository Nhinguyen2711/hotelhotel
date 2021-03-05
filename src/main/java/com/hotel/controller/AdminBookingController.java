/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.controller;

import com.hotel.entity.Booking;
import com.hotel.entity.Invoice;
import com.hotel.service.BookingService;
import com.hotel.service.InvoiceService;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.support.PagedListHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
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
public class AdminBookingController {

    @Autowired
    BookingService bookingService;
    @Autowired
    InvoiceService invoiceService;

    @GetMapping(value = "/")
    public String HomeAdmin(){
    return "UserHome"; 
    }
    
    @GetMapping(value = "/ListBooking")
    public String listBooking(HttpServletRequest request, Model model) {
        List<Booking> bookings = bookingService.getAllBooking();
        int page = ServletRequestUtils.getIntParameter(request, "p", 0);
        PagedListHolder pagedListHolder = new PagedListHolder(bookings);
        pagedListHolder.setPage(page);
        pagedListHolder.setPageSize(10);
        model.addAttribute("pagedListBooking", pagedListHolder);
        return "AdminBookingManagement";
    }

    @GetMapping(value = "formBooking")
    public String formBooking(Model model) {
        Booking booking = new Booking();
        model.addAttribute("booking", booking);
        return "AdminFormBooking";
    }

    @PostMapping(value = "addBooking")
    public String addBooking(@ModelAttribute("booking") @Valid Booking booking, BindingResult result) {       
        if (result.hasErrors()) {
            return "AdminFormBooking";
        }
        bookingService.saveBooking(booking);
        return "redirect:/admin/ListBooking";
    }

    @GetMapping(value = "updateBooking")
    public String updateBooking(@RequestParam("bookingId") int bookingId, Model model) {
        Booking booking = bookingService.getBooking(bookingId);
        model.addAttribute("booking", booking);
        return "AdminFormBooking";
    }

    @GetMapping(value = "deleteBooking")
    public String deleteBooking(@RequestParam("bookingId") int bookingId) {
        invoiceService.deleteInvoice(bookingId);
        bookingService.deleteBooking(bookingId);
        return "redirect:/admin/ListBooking";
    }

}
