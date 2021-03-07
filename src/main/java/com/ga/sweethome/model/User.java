package com.ga.sweethome.model;

import java.time.LocalDateTime;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name = "User")
public class User {
	
//	@Transient
//    public String getPhotosImagePath() {
//        if (photo == null || id < 0) return null;
//        return "user-photos/" + id + "/" + photo;
//    } 
	@Id
	@GeneratedValue
	private int id;
	
	@Column(name="userRole", nullable = false, updatable = false)
	private String userRole;
	
	@Column(name="firstName", nullable = false, updatable = true)
	private String firstName;
	
	@Column(name="lastName", nullable = false, updatable = true)
	private String lastName;
	
	@Column(name="emailAddress", nullable = false, updatable = true)
	private String emailAddress;
	
	@Column(name="phoneNumber", nullable = false, updatable = true)
	private String phoneNumber;
	
	@Column( nullable = true ,updatable = true ,length = 2000)
	private String userImage;
	
//	@Column( nullable = true ,length = 64)
//	private String photo;
	
	
	@Column(name="password", nullable = false, updatable = true)
	private String password;
	
	private String oldPass;

	public String getOldPass() {
		return oldPass;
	}

	public void setOldPass(String oldPass) {
		this.oldPass = oldPass;
	}

	@Column(name="confirmPassword", nullable = false, updatable = true)
	private String confirmPassword;
	
	@Column(name = "createdAt", nullable = false, updatable = false)
	@CreationTimestamp
	private LocalDateTime createAt;

	@Column(name = "updatedAt", nullable = false, updatable = true)
	@UpdateTimestamp
	private LocalDateTime updateAt;

	@OneToMany(mappedBy = "user")
	private Set<House> ownedHouses;

	@OneToMany(mappedBy = "rentee")
	private Set<House> rentedHouses;


	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUserRole() {
		return userRole;
	}

	public void setUserRole(String userRole) {
		this.userRole = userRole;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmailAddress() {
		return emailAddress;
	}

	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getUserImage() {
		return userImage;
	}

	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}

	public String getPassword() {
		return password;
	}

//	public String getPhoto() {
//		return photo;
//	}
//
//	public void setPhoto(String photo) {
//		this.photo = photo;
//	}

	public void setPassword(String password) {
		this.password = password;
	}

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

	public Set<House> getOwnedHouses() {
		return ownedHouses;
	}

	public void setOwnedHouses(Set<House> ownedHouses) {
		this.ownedHouses = ownedHouses;
	}

	public Set<House> getRentedHouses() {
		return rentedHouses;
	}

	public void setRentedHouses(Set<House> rentedHouses) {
		this.rentedHouses = rentedHouses;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
}
