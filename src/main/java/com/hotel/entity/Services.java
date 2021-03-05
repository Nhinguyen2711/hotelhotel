package com.hotel.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "Service")
public class Services {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "serviceid")
	private int serviceId;
        
        @Size(min = 3, max = 200, message = "Enter 3 to 200 characters")
	@Column(name = "servicename")
	private String serviceName;
        
        @NotEmpty( message = "Can not empty")
	@Column(name = "description")
	private String description;
        
        @NotEmpty (message = "Can not empty")
	@Column(name = "unit")
	private String unit;
        
        @Min(value = 1, message = "the price is not less than 1")
	@Column(name = "price")
	private String price;
        
	@OneToMany(mappedBy = "service", fetch = FetchType.LAZY)
	private List<Charge> charges=new ArrayList<Charge>();
        
	public Services() {
		super();
	}
	public Services(int serviceId, String serviceName, String description, String unit, String price,
			List<Charge> charges) {
		super();
		this.serviceId = serviceId;
		this.serviceName = serviceName;
		this.description = description;
		this.unit = unit;
		this.price = price;
		this.charges = charges;
	}
	public int getServiceId() {
		return serviceId;
	}
	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getUnit() {
		return unit;
	}
	public void setUnit(String unit) {
		this.unit = unit;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public List<Charge> getCharges() {
		return charges;
	}
	public void setCharges(List<Charge> charges) {
		this.charges = charges;
	}

}
