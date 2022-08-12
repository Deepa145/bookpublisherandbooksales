package com.chainsys.bookmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name="admin")
public class Admin {
	@Id
	@Column(name = "USERNAME")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid User Name")
	private String name;
	
	@Column(name = "PASSWORD")
	@Pattern(regexp = "^[A-Za-z]\\w{3,20}$", message = "*Enter valid Password")
	private String password;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	public String toString() {
		return String.format("%s,%s", name, password);
	}

	public boolean equals(Object obj) {
		boolean result = false;
		if (obj == null) {
			return false;
		}
		Class<? extends Object> c1 = obj.getClass();
		if (c1 == this.getClass()) {
			Admin other = (Admin) obj;
			if (other.hashCode() == this.hashCode()) {
				result = true;
			}
		}
		return result;
	}
}
