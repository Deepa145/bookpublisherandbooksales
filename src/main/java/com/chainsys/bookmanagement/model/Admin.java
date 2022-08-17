package com.chainsys.bookmanagement.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;

@Entity
@Table(name = "admin")
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
 @Override
	public String toString() {
		return String.format("%s,%s", name, password);
	}
}
