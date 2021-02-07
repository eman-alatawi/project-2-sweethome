package com.ga.sweethome.model;
import java.time.LocalDateTime;

import javax.persistence.*;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;
@Entity
@Table(name="Room")
public class Room {
	@Id
	@GeneratedValue
	@Column(name = "id", nullable = false, updatable = false)
	private int id;
	
	@Column(name="roomName", nullable = false, updatable = true)
	private String roomName ;
	
	@Column(name="roomImage", nullable = false, updatable = true ,length = 2000)
	private String roomImage ;
	
	@Column(name="roomArea", nullable = false, updatable = true)
	private double roomArea;
	
	@ManyToOne
	@JoinColumn(name = "FK_HouseId")
	private House house;
	
	@Column(name="createdAt", nullable = false, updatable = false)
	@CreationTimestamp
	private LocalDateTime createAt;
	
	@Column(name="updatedat", nullable = false, updatable = true)
	@UpdateTimestamp
	private LocalDateTime updateAt;
	public LocalDateTime getCreateAt() {
		return createAt;
	}
	public void setCreateAt(LocalDateTime createAt) {
		this.createAt = createAt;
	}
	public LocalDateTime getUpdateAt() {
		return updateAt;
	}
	public void setUpdateAt(LocalDateTime updateAt) {
		this.updateAt = updateAt;
	}
	public House getHouse() {
		return house;
	}
	public void setHouse(House house) {
		this.house = house;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRoomName() {
		return roomName;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public String getRoomImage() {
		return roomImage;
	}
	public void setRoomImage(String roomImage) {
		this.roomImage = roomImage;
	}
	public double getRoomArea() {
		return roomArea;
	}
	public void setRoomArea(double roomArea) {
		this.roomArea = roomArea;
	}
	
}
