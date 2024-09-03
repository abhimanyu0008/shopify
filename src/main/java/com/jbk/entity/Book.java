package com.jbk.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data @NoArgsConstructor @AllArgsConstructor @ToString
@Entity
@Table(name="bookdatails")
public class Book {
	@Id
	private long bookId;
	private String bookTitle;
	private String ISBN;
	private String publishDate;
	private String category;
	private String author;
	private double price;
}
