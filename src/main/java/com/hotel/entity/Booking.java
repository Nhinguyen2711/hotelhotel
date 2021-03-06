package com.hotel.entity;
import java.io.Serializable;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.FutureOrPresent;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.PastOrPresent;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.NotEmpty;
import org.hibernate.validator.constraints.Range;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "booking")
public class Booking implements Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "bookingid")
	private int bookingId;

	@Column(name = "booking_uid")
	private String bookinguid;
        

	@Column(name = "bookingdate")
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	private LocalDate bookingDate;
        
        
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	@Column(name = "checkindate")
	private Date checkInDate;
       
        
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	@Column(name = "checkoutdate")
	private Date checkOutDate;

	@Enumerated(EnumType.STRING)
	private Status status;

	@Column(name = "note")
	private String note;
        
        @Range( min = 1, max = 909, message = "Please choose rooms from 1 to 909")
	@Column(name = "numberOfRooms")
	private int numberOfRooms;
        
        @Min(value = 0)
	@Column(name = "price")
	private double price;

	@DateTimeFormat(pattern = "yyyy/MM/dd")
	@Column(name = "cancelDate")
	private Date cancelDate;
        
        @Size( min = 3, max = 200, message = "The name must be between 3 and 200 characters")
        @Column (name= "guesName")
        private String guesName;
         
        @NotEmpty(message = "Enter 8 numbers to 12 numbers")
        @Pattern(regexp = "(^$|[0-9]{8,12})", message = "Enter 8 numbers to 12 numbers")
        @Column (name="phoneNumber")
        private String phoneNumber;
              
        @NotEmpty(message = "can not empty")
        @Column (name="email")
        private String email;
        
        @OneToMany(mappedBy = "booking",fetch = FetchType.LAZY)
        private List<Charge> charges;
       
	@OneToMany(mappedBy = "booking", fetch = FetchType.LAZY)
	private List<BookingDetails> bookingdetails;

	@OneToMany(mappedBy = "booking", fetch = FetchType.LAZY)
	private List<Invoice> invoices;
        
        @ManyToOne
        @JoinColumn(name = "room_type_id")
        private RoomType roomtype;
        
        @ManyToOne
        @JoinColumn(name ="promid")
        private Promotion promotion;

    public List<Charge> getCharges() {
        return charges;
    }

    public void setCharges(List<Charge> charges) {
        this.charges = charges;
    }
        
        

    public RoomType getRoomtype() {
        return roomtype;
    }

    public void setRoomtype(RoomType roomtype) {
        this.roomtype = roomtype;
    }

    public String getGuesName() {
        return guesName;
    }

    public void setGuesName(String guesName) {
        this.guesName = guesName;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

	public Booking() {
		super();
	}

	public int getBookingId() {
		return bookingId;
	}

	public void setBookingId(int bookingId) {
		this.bookingId = bookingId;
	}

	public String getBookinguid() {
		return bookinguid;
	}

	public void setBookinguid(String bookinguid) {
		this.bookinguid = bookinguid;
	}

	public LocalDate getBookingDate() {
		return bookingDate;
	}

	public void setBookingDate(LocalDate bookingDate) {
		this.bookingDate = bookingDate;
	}

	public Date getCheckInDate() {
		return checkInDate;
	}

	public void setCheckInDate(Date checkInDate) {
		this.checkInDate = checkInDate;
	}

	public Date getCheckOutDate() {
		return checkOutDate;
	}

	public void setCheckOutDate(Date checkOutDate) {
		this.checkOutDate = checkOutDate;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}


	public List<BookingDetails> getBookingdetails() {
		return bookingdetails;
	}

	public void setBookingdetails(List<BookingDetails> bookingdetails) {
		this.bookingdetails = bookingdetails;
	}

	public List<Invoice> getInvoices() {
		return invoices;
	}

	public void setInvoices(List<Invoice> invoices) {
		this.invoices = invoices;
	}



	public Promotion getPromotion() {
		return promotion;
	}

	public void setPromotion(Promotion promotion) {
		this.promotion = promotion;
	}

	public int getNumberOfRooms() {
		return numberOfRooms;
	}

	public void setNumberOfRooms(int numberOfRooms) {
		this.numberOfRooms = numberOfRooms;
	}

	public Date getCancelDate() {
		return cancelDate;
	}

	public void setCancelDate(Date cancelDate) {
		this.cancelDate = cancelDate;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

}