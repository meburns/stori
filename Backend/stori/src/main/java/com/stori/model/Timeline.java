package com.stori.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.NaturalId;
import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;
import org.hibernate.annotations.UpdateTimestamp;

@Entity
@Table(name = "timelines")
public class Timeline {
	
	@Id 
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@NotFound(action = NotFoundAction.EXCEPTION)
	private Long id;

	@Column(name = "name")
	@NotFound(action = NotFoundAction.EXCEPTION)
	private String name;
	
	@OneToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	@JoinTable(name = "timeline_boxes", 
	joinColumns = @JoinColumn(name = "timeline_id"), 
	inverseJoinColumns = @JoinColumn(name = "box_id"))
	private List<Box> boxes = new ArrayList<>();
	
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "created_at")
	private Date created_at;

	@UpdateTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "updated_at")
	private Date updated_at;
	
	public Timeline() {}
	
	public Timeline(String name, List<Box> boxes) {
		this.name = name;
		this.boxes = boxes;
	}
	
	public Long getId() {
		return this.id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getName() {
		return this.name;
	}
	
	public void setName(String name) {
		this.name = name;	
	}
	
	public List<Box> getBoxes() {
		return this.boxes;
	}
	
	public void setBoxes(List<Box> boxes) {
		this.boxes = boxes;	
	}
	
	public Date getUpdated_at() {
		return this.updated_at;
	}
	
	public Date getCreated_at() {
		return this.created_at;
	}
}
