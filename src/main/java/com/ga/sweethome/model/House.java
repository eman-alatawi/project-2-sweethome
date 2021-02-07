package com.ga.sweethome.model;

import java.time.LocalDate;
//import java.time.LocalDateTime;
import java.util.Set;

import javax.persistence.*;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name="House")
public class House {

	@Id
	@GeneratedValue
	@Column(name = "id", nullable = false, updatable = false)
	private int id;
	
	@Column(name="houseImage", nullable = false, updatable = true ,length = 2000)
	private String houseImage;
	
	@Column(name="houseAddress", nullable = false, updatable = true)
	private String houseAddress;
	
	@Column(name="houseNumber", nullable = false, updatable = true)
	private String houseNumber;
	
	@Column(name="description", nullable = false, updatable = true ,length = 2000)
	private String description;
	
	@Column(name="totalRoomNum", nullable = false, updatable = true)
	private int totalRoomNum;
	
	@Column(name="rentPrice", nullable = false, updatable = true)
	private double rentPrice;
	
	@Column(name="createdAt", nullable = false, updatable = false)
	@CreationTimestamp
	private LocalDate createAt;
	
	
	@Column(name="updatedAt", nullable = false, updatable = true)
	@UpdateTimestamp
	private LocalDate updateAt;
	
	@ManyToOne
	@JoinColumn(name = "FK_OwnerId")
	private User user;

	
	@ManyToOne
	@JoinColumn(name = "FK_RenteeId")
	private User rentee;
	
	@OneToMany(mappedBy="house", cascade = CascadeType.ALL)
	 private Set<Room> rooms;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getHouseImage() {
		return houseImage;
	}

	public void setHouseImage(String houseImage) {
		this.houseImage = houseImage;
	}

	public String getHouseAddress() {
		return houseAddress;
	}

	public void setHouseAddress(String houseAddress) {
		this.houseAddress = houseAddress;
	}

	public String getHouseNumber() {
		return houseNumber;
	}

	public void setHouseNumber(String houseNumber) {
		this.houseNumber = houseNumber;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	

	public int getTotalRoomNum() {
		return totalRoomNum;
	}

	public void setTotalRoomNum(int totalRoomNum) {
		this.totalRoomNum = totalRoomNum;
	}

	public double getRentPrice() {
		return rentPrice;
	}

	public void setRentPrice(double rentPrice) {
		this.rentPrice = rentPrice;
	}
	

	public LocalDate getCreateAt() {
		return createAt;
	}

	public void setCreateAt(LocalDate createAt) {
		this.createAt = createAt;
	}

	public LocalDate getUpdateAt() {
		return updateAt;
	}

	public void setUpdateAt(LocalDate updateAt) {
		this.updateAt = updateAt;
	}

	public User getRentee() {
		return rentee;
	}

	public void setRentee(User rentee) {
		this.rentee = rentee;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Set<Room> getRooms() {
		return rooms;
	}

	public void setRooms(Set<Room> rooms) {
		this.rooms = rooms;
	} 
	
	
	
}
