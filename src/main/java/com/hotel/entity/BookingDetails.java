package com.hotel.entity;

import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "bookingdetails")
public class BookingDetails {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "booking_details_id")
	private int bookingdetailsid;

	@ManyToOne
	@JoinColumn(name = "bookingid")
	private Booking booking;

	@ManyToOne
	@JoinColumn(name = "roomid")
	private Room room;

        @ManyToOne
	
	@JoinColumn(name = "room_type_id")
	private RoomType roomtype;
        
        @OneToMany(mappedBy = "bookingDetails", fetch = FetchType.LAZY)
	private List<Charge> charges;

    public BookingDetails() {
    }

    public BookingDetails(int bookingdetailsid, Booking booking, Room room, RoomType roomtype, List<Charge> charges) {
        this.bookingdetailsid = bookingdetailsid;
        this.booking = booking;
        this.room = room;
        this.roomtype = roomtype;
        this.charges = charges;
    }

    public int getBookingdetailsid() {
        return bookingdetailsid;
    }

    public void setBookingdetailsid(int bookingdetailsid) {
        this.bookingdetailsid = bookingdetailsid;
    }

    public Booking getBooking() {
        return booking;
    }

    public void setBooking(Booking booking) {
        this.booking = booking;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public RoomType getRoomtype() {
        return roomtype;
    }

    public void setRoomtype(RoomType roomtype) {
        this.roomtype = roomtype;
    }

    public List<Charge> getCharges() {
        return charges;
    }

    public void setCharges(List<Charge> charges) {
        this.charges = charges;
    }
        
	

}
