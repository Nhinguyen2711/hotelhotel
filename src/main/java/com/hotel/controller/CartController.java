/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hotel.controller;

import com.hotel.entity.Booking;
import com.hotel.entity.BookingDetails;
import com.hotel.entity.CheckInDate;
import com.hotel.entity.CreditCard;
import com.hotel.entity.Invoice;
import com.hotel.entity.Item;
import com.hotel.entity.Promotion;
import com.hotel.entity.Status;
import com.hotel.service.BookingDetailsService;
import com.hotel.service.BookingService;
import com.hotel.service.CreditCardService;
import com.hotel.service.EmailService;
import com.hotel.service.InvoiceService;
import com.hotel.service.PromotionService;
import com.hotel.service.RoomService;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Administrator
 */
@Component
@Controller
@Transactional(rollbackFor = Exception.class)
@RequestMapping(value = "/")
public class CartController {

    @Autowired
    @Qualifier("cart")
    private List<Item> cart;

    @Autowired
    @Qualifier("date")
    private CheckInDate date;

    @Autowired
    private RoomService roomService;

    @Autowired
    private RoomController roomController;

    @Autowired
    private PromotionService promotionService;

    @Autowired
    private CreditCardService creditCardService;

    @Autowired
    private InvoiceService invoiceService;

    @Autowired
    private BookingDetailsService bookingDetailsService;

    @Autowired
    private BookingService bookingService;

    @Autowired
    private EmailService emailService;
    
    @RequestMapping(value = {"/cart"}, method = RequestMethod.GET)
    public String index(ModelMap modelMap, Model theModel) {
        int countItems = 0;
        int total = 0;
        if (cart != null) {
            List<Item> cart = (List<Item>) this.cart;
            countItems = cart.size();
            for (Item item : cart) {
                total += item.getRoom().getPrice();
            }
        }

        modelMap.put("countItems", countItems);
        modelMap.put("total", total);
        theModel.addAttribute("cart", cart);
        return "cart";
    }

    @RequestMapping(value = ("/cart/add/{roomId}"), method = RequestMethod.GET)
    public void addRoomToCart(@PathVariable("roomId") int roomId, Model theModel) throws ParseException {

        cart.add(new Item(roomService.findRoomId(roomId)));

        theModel.addAttribute("cart", cart);

    }

    //@RequestMapping(value = "/buy/{roomid}", method = RequestMethod.GET)
    //public String buy(@PathVariable("roomid") int roomid, HttpSession session, HttpServletRequest request) {
    //    cart.add(new Item(roomService.findRoomId(roomid)));
    //    session.setAttribute("cart", cart);
    //    return "redirect:/cart";
    //}
    @RequestMapping(value = "/checkout", method = RequestMethod.GET)
    public String checkoutInfomation(Authentication authentication, HttpSession session, ModelMap modelMap, ModelAndView modelAndView, Model theModel) {

        LocalDate date = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("YYYY-MM-dd");
        String formattedString = date.format(formatter);
        List<Promotion> promotions = promotionService.searchAllPromotionWithTime(formattedString);
        theModel.addAttribute("promotions", promotions);
        modelMap.getAttribute("total");
        return "checkout";

    }

    @RequestMapping(value = "/checkoutsuccess", method = RequestMethod.POST)
    public String checkout(@RequestParam(value = "error", required = false) String error, @RequestParam("cardnumber") int cardnumber, @RequestParam("cardname") String cardname, @RequestParam("cardmonth") int cardmonth,
            @RequestParam("cardyear") int cardyear, @RequestParam("email") String email, @RequestParam("name") String name, @RequestParam("phonenumber") String phonenumber,
            @RequestParam("promvalue") int promvalue, @RequestParam("note") String note,
            HttpServletRequest request, ModelMap modelMap, ModelAndView modelAndView, Model theModel) throws ParseException {

        String inDate = date.getCheckInDate();
        String outDate = date.getCheckOutDate();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date in = dateFormat.parse(inDate);
        Date out = dateFormat.parse(outDate);
        LocalDate localDate = LocalDate.now();


        int countItems = 0;
        int total = 0;
        if (cart != null) {
            List<Item> cart = (List<Item>) this.cart;
            countItems = cart.size();
            for (Item item : cart) {
                total += item.getRoom().getPrice();
            }
        }

        int total2 = 0;
        if (promvalue == 0) {
            total2 = total;
        } else {
            total2 = total - (total * promvalue / 100);
        }

        boolean check = false;
        String messenger = null;
        List<CreditCard> cards = creditCardService.findAllCard();
        CreditCard card = null;
        for (CreditCard c : cards) {
            if (cardnumber == c.getCardNumber() && cardname.equals(c.getOwnerName())
                    && cardmonth == c.getExpiryMonth() && cardyear == c.getExpiryYear() && cardnumber == c.getCardNumber()) {
                card = c;
                break;
            }
        }

        String messenger1 = null;
        if (card == null) {
            messenger = "Information not correct!!!";
        } else if (card.getBalance() >= total) {
            double newMoney = card.getBalance() - total2;

            card.setBalance(newMoney);

            LocalDate now = LocalDate.now();

            Booking booking = new Booking();
            booking.setPrice(total2);
            booking.setBookingDate(now);
            booking.setStatus(Status.SUCCESS);
            booking.setNumberOfRooms(countItems);
            booking.setNote(note);
            booking.setCheckInDate(in);
            booking.setCheckOutDate(out);
            booking.setBookinguid(bookingUID());
            booking.setGuesName(name);
            booking.setEmail(email);
            booking.setPhoneNumber(phonenumber);
            booking = bookingService.save(booking);

            List<Item> cart = (List<Item>) this.cart;
            for (Item item : cart) {
                BookingDetails bookingDetails = new BookingDetails();
                bookingDetails.setBooking(booking);
                bookingDetails.setRoom(item.getRoom());
                bookingDetails.setRoomtype(item.getRoom().getRoomtype());
                bookingDetailsService.save(bookingDetails);
            }
           
            Invoice invoice = new Invoice();
            invoice.setAmount(total);
            invoice.setBooking(booking);
            invoice.setCreditcard(card);
            invoiceService.save(invoice);
            SimpleMailMessage mailMessage = new SimpleMailMessage();
            mailMessage.setTo(email);
            mailMessage.setSubject("Complete Checkout!");
            mailMessage.setFrom("furushuriya3@gmail.com");
            mailMessage.setText("Thank you Mr/Mrs " + name  + " for your booking room at our hotel\n"
                    + "And we will call to your phone(" + bookingUID() + ") to check" + "\n"
                    + "We hope you will support us more in the future" + "\n"
                    + "Thank you very much!!");
            emailService.sendEmail(mailMessage);
            check = true;
        } else {
            messenger1 = "You not have enough money, please check your card!!!";
        }

        if (check == true) {
            return "success";
        } else {
            theModel.addAttribute("messenger", messenger);
            theModel.addAttribute("messenger1", messenger1);
            theModel.getAttribute("promotions");
            return "checkout";
        }
    }

    private String bookingUID() {
 
    int length = 5;
    boolean useLetters = true;
    boolean useNumbers = true;
    String generatedString = RandomStringUtils.random(length, useLetters, useNumbers);
    System.out.println(generatedString);
        return generatedString;
}
    
}
