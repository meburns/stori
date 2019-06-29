package com.stori.model;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;

public class Block {
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@NotFound(action = NotFoundAction.EXCEPTION)
	private Long id;
	
	@Column(name = "content")
	@NotFound(action = NotFoundAction.EXCEPTION)
	private String content;
	
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getContent() {
		return this.content;
	}
	
	public void setContent(String content) {
		this.content = content;	
	}
	
}
