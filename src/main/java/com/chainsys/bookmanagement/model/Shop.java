package com.chainsys.bookmanagement.model;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;
import javax.validation.constraints.Digits;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@Entity
@Table(name = "shop")
public class Shop {
	@Id
	@Column(name = "SHOPID")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "shid")
	@SequenceGenerator(name = "shid", sequenceName = "shid", allocationSize = 1)
	private int shopId;
	@Column(name = "SHOPLOCATION")
	@NotBlank(message = "*shopLocation shouldn't be null")
	private String shopLocation;
	@Column(name = "CONTACTPERSON")
	@Size(max = 20, min = 3)
	@NotBlank(message = "*Name can't be Empty")
	private String contactPerson;
	@Column(name = "PHONENUMBER")
	@Digits(integer = 10, fraction = 0)
	private long phoneNumber;

	@OneToMany(mappedBy = "shop", fetch = FetchType.LAZY)
	private List<OrderedHistory> orderedHistories;

	public List<OrderedHistory> getOrderedHistories() {
		return orderedHistories;
	}

	public void setOrderedHistories(List<OrderedHistory> orderedHistories) {
		this.orderedHistories = orderedHistories;
	}

	public int getShopId() {
		return shopId;
	}

	public void setShopId(int shopId) {
		this.shopId = shopId;
	}

	public String getShopLocation() {
		return shopLocation;
	}

	public void setShopLocation(String shopLocation) {
		this.shopLocation = shopLocation;
	}

	public String getContactPerson() {
		return contactPerson;
	}

	public void setContactPerson(String contactPerson) {
		this.contactPerson = contactPerson;
	}

	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String toString() {
		return String.format("%d,%s,%s,%d", shopId, shopLocation, contactPerson, phoneNumber);
	}
}
