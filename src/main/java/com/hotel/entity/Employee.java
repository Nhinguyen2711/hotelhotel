package com.hotel.entity;

import static java.lang.Integer.min;
import java.util.Date;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.PastOrPresent;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import org.hibernate.validator.constraints.NotEmpty;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "employee")
public class Employee implements java.io.Serializable {

	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "empid")
	private int empId;
        
        @Size (min = 3, max = 200, message = "The name must be between 3 and 200 characters")
	@Column(name = "empname")
	private String empName;
        
        @NotEmpty(message = "Can Not empty")
	@Column(name = "gender")
	private String gender;
        
        
	@DateTimeFormat(pattern = "yyyy/MM/dd")
	@Column(name = "dateofbirth")
	private Date dateOfBirth;
        
        @NotEmpty(message = "The name must be between 10 and 300 characters")
	@Column(name = "address")
	private String address;
        
        @NotEmpty(message = "Enter 8 numbers to 12 numbers")
        @Pattern(regexp = "(^$|[0-9]{8,12})", message = "Enter 8 numbers to 12 numbers")
	@Column(name = "phone")
	private String phone;

	@Column(name = "photo")
	private String photo;

        @Pattern( regexp = "^[a-zA-Z0-9_-]{3,50}+$", message = "a-z,A-Z,0-9,_,-,between 3 and 200 characters ")
	@Column(name = "username")
	private String username;
        
        @Pattern( regexp = "^[a-zA-Z0-9_-]{3,50}+$",message = "a-z,A-Z,0-9,_,-,between 3 and 200 characters ")
	@Column(name = "password")
	private String password;
        
        @Transient
        private String roleName;


	@ManyToMany(cascade = CascadeType.MERGE, fetch = FetchType.LAZY)
	@JoinTable(name = "employee_role", joinColumns = @JoinColumn(name = "empId"), inverseJoinColumns = @JoinColumn(name = "role_id"))
	private List<Role> listRole;
        


	public Employee() {
		super();
	}

    public Employee(String username, String password, Set<Role> listRole) {
        this.username = username;
        this.password = password;
        this.listRole = (List<Role>) listRole;
    }

    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }
    



	public int getEmpId() {
		return empId;
	}

	public void setEmpId(int empId) {
		this.empId = empId;
	}

	public String getEmpName() {
		return empName;
	}

	public void setEmpName(String empName) {
		this.empName = empName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public List<Role> getListRole() {
		return listRole;
	}

	public void setListRole(List<Role> listRole) {
		this.listRole = listRole;
	}


}
