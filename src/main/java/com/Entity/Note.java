package com.Entity;

import java.time.LocalDate;
import java.util.Random;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
@Entity
public class Note {
	@Id
	private int id;
	private String title;
	
	@Column(length = 2000)
	private String content;
	private LocalDate date;
	public Note() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Note(String title, String content, LocalDate date) {
		super();
		this.id = new Random().nextInt(100000);
		this.title = title;
		this.content = content;
		this.date = date;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public LocalDate getDate() {
		return date;
	}
	public void setDate(LocalDate date) {
		this.date = date;
	}
	
	
}
