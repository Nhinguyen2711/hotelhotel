package com.hotel.entity;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "charge")
public class Charge {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "chargeid")
	private int chargeId;
	@Column(name = "chargedate")
	private LocalDateTime chargeDate;
	@Column(name = "quantity")
	private int quantity;
	@ManyToOne
	@JoinColumn(name = "serviceid")
	private Services service;
        
        @ManyToOne
        @JoinColumn(name ="bookingid")
        private Booking booking;

	@ManyToOne
	@JoinColumn(name = "booking_detalis_id")
	private BookingDetails bookingDetails;

    public Booking getBooking() {
        return booking;
    }

    public void setBooking(Booking booking) {
        this.booking = booking;
    }

    public BookingDetails getBookingDetails() {
        return bookingDetails;
    }

    public void setBookingDetails(BookingDetails bookingDetails) {
        this.bookingDetails = bookingDetails;
    }

	public Charge() {
		super();
	}

	public int getChargeId() {
		return chargeId;
	}

	public void setChargeId(int chargeId) {
		this.chargeId = chargeId;
	}

	public LocalDateTime getChargeDate() {
		return chargeDate;
	}

	public void setChargeDate(LocalDateTime chargeDate) {
		this.chargeDate = chargeDate;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Services getService() {
		return service;
	}

	public void setService(Services service) {
		this.service = service;
	}



}
