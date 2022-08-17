package com.chainsys.bookmanagement.model;

import java.sql.Date;
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
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Range;

@Entity
@Table(name = "book")
public class Book {

	@Id
	@Column(name = "BOOKID")
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "boid")
	@SequenceGenerator(name = "boid", sequenceName = "boid", allocationSize = 1)
	private int bookId;
	@Column(name = "BOOKNAME")
	@Size(min = 1, max = 15, message = "*bookName shouldn't be null")
	private String bookName;
	@Column(name = "DATEOFPUBLISHING")
	private Date dateOfPublishing;
	@Column(name = "CATEGORY")
	@Size(min = 1, max = 15, message = "*category shouldn't be null")
	private String category;
	@Column(name = "PRICE")
	@Range(min = (long) 0.0, message = "*price shouldn't be null")
	private double price;
	@Column(name = "STOCKINHAND")
	@Min(value = 1, message = " stockInHand must be equal or greater than 18")
	private int stockInHand;
	@Column(name = "SALES")
	@Min(value = 1, message = " sales must be equal or greater than 18")
	private long sales;

	@OneToMany(mappedBy = "book", fetch = FetchType.LAZY)
	private List<AuthorBookDetails> authorBookDetails;

	public List<AuthorBookDetails> getAuthorBookDetails() {
		return authorBookDetails;
	}

	public void setAuthorBookDetails(List<AuthorBookDetails> authorBookDetails) {
		this.authorBookDetails = authorBookDetails;
	}

	public int getBookId() {
		return bookId;
	}

	public void setBookId(int bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public Date getDateOfPublishing() {
		return dateOfPublishing;
	}

	public void setDateOfPublishing(Date dateOfPublishing) {
		this.dateOfPublishing = dateOfPublishing;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getStockInHand() {
		return stockInHand;
	}

	public void setStockInHand(int stockInHand) {
		this.stockInHand = stockInHand;
	}

	public long getSales() {
		return sales;
	}

	public void setSales(long sales) {
		this.sales = sales;
	}

	public String toString() {
		return String.format("%d,%s,%s,%s,%d,%d,%d", bookId, bookName, dateOfPublishing, category, price, stockInHand,
				sales);
	}

}
