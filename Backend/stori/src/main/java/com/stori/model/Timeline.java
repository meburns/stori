package com.stori.model;

import java.util.Date;

import javax.persistence.Column;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;
import org.hibernate.annotations.UpdateTimestamp;

public class Timeline {
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@NotFound(action = NotFoundAction.EXCEPTION)
	private long id;

	@Column(name = "name")
	@NotFound(action = NotFoundAction.EXCEPTION)
	private String name;

	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "created_at")
	private Date created_at;

	@UpdateTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "updated_at")
	private Date updated_at;
	
	public Timeline() {}
	
	public Timeline(String name) {
		name = this.name;
	}
	
	public String getName() {
		return this.name;
	}
	
	public void setName(String name) {
		this.name = name;	
	}
}
