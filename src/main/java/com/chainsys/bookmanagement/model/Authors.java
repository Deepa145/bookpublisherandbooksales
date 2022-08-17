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
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name = "authors")
public class Authors {
	@Id
	@Column(name = "AUTHORID")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "auid")
	@SequenceGenerator(name = "auid", sequenceName = "auid", allocationSize = 1)
	private int authorId;
	@Column(name = "AUTHORNAME")
	@Size(max = 20, min = 3)
	@NotBlank(message = "*Name can't be Empty")
	private String authorName;
	@Column(name = "AUTHORADDRESS")
	 @NotEmpty(message = "*Please enter Address")	
	private String authorAddress;
	@Column(name = "PHONENUMBER")
	@Digits(integer = 10, fraction = 0)
	private long phoneNumber;
	@Column(name = "EMAIL")
	@Email(message = "*Invalid Email", regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,3}")
	private String email;
	@Column(name = "GENDER")
	@NotEmpty(message = "*Please enter Gender")
    @Pattern(regexp = "^[a-zA-Z]*$", message = "*Value should be in Alphabets ")
	private String gender;

	@OneToMany(mappedBy = "authors", fetch = FetchType.LAZY)
	private List<AuthorBookDetails> authorBookDetails;

	public List<AuthorBookDetails> getAuthorBookDetails() {
		return authorBookDetails;
	}

	public void setAuthorBookDetails(List<AuthorBookDetails> authorBookDetails) {
		this.authorBookDetails = authorBookDetails;
	}

	public int getAuthorId() {
		return authorId;
	}

	public void setAuthorId(int authorId) {
		this.authorId = authorId;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public String getAuthorAddress() {
		return authorAddress;
	}

	public void setAuthorAddress(String authorAddress) {
		this.authorAddress = authorAddress;
	}

	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}
	
	public String toString() {
		return String.format("%d,%s,%s,%d,%s,%s", authorId, authorName, authorAddress,phoneNumber,email,gender);
	}

	public boolean equals(Object obj) {
		boolean result = false;
		if (obj == null) {
			return false;
		}
		Class<? extends Object> c1 = obj.getClass();
		if (c1 == this.getClass()) {
			Authors other = (Authors) obj;
			if (other.hashCode() == this.hashCode()) {
				result = true;
			}
		}
		return result;
	}

	public int hashCode() {
		return this.authorId;
	}

}
