package com.hotel.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.CascadeType;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "room")
public class Room implements Serializable{

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "roomid")
	private int roomid;
        
        @Min(value = 100 , message = "enter the room number from 100 to 909")
        @Max(value = 909, message = "enter the room number from 100 to 909")
	@Column(name = "room_number")
	private int roomnumber;

        @Min(value = 1, message = "enter numbers 1 to 9")
        @Max(value = 9, message = "enter numbers 1 to 9")
	@Column(name = "floor")
	private int floor;

        @Min(value = 1 , message = "Only enter numbers")
        @Column(name = "price")
	private double price;
        
        @NotEmpty(message = "Can not empty")
	@Column(name = "description")
	private String description;
        
        @OneToMany(mappedBy="room",fetch = FetchType.LAZY)
        private List<Charge> charges;

	@ManyToOne
	@JoinColumn(name = "room_type_id")
	private RoomType roomtype;

	@OneToMany(mappedBy = "room", fetch = FetchType.LAZY)
	private List<BookingDetails> bookingdetails = new ArrayList<BookingDetails>(0);
        
        @OneToMany(mappedBy = "room", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private List<Image> images;

public Room() {
    }

    public Room(int roomid, int roomnumber, int floor, double price, String description, RoomType roomtype, List<Image> images) {
        this.roomid = roomid;
        this.roomnumber = roomnumber;
        this.floor = floor;
        this.price = price;
        this.description = description;
        this.roomtype = roomtype;
        this.images = images;
    }

    public List<Charge> getCharges() {
        return charges;
    }

    public void setCharges(List<Charge> charges) {
        this.charges = charges;
    }
 
   

    public int getRoomid() {
        return roomid;
    }

    public void setRoomid(int roomid) {
        this.roomid = roomid;
    }

    public int getRoomnumber() {
        return roomnumber;
    }

    public void setRoomnumber(int roomnumber) {
        this.roomnumber = roomnumber;
    }

    public int getFloor() {
        return floor;
    }

    public void setFloor(int floor) {
        this.floor = floor;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public RoomType getRoomtype() {
        return roomtype;
    }

    public void setRoomtype(RoomType roomtype) {
        this.roomtype = roomtype;
    }

    public List<BookingDetails> getBookingdetails() {
        return bookingdetails;
    }

    public void setBookingdetails(List<BookingDetails> bookingdetails) {
        this.bookingdetails = bookingdetails;
    }

    public List<Image> getImages() {
        return images;
    }

    public void setImages(List<Image> images) {
        this.images = images;
    }

   
}