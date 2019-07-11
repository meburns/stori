package com.stori.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.stori.model.Box;
import com.stori.model.Timeline;
import com.stori.model.User;
import com.stori.repository.TimelineRepository;
import com.stori.repository.UserRepository;

@CrossOrigin(origins = "*", maxAge = 3600)
@RestController
@RequestMapping("/{username}/timeline")
public class TimelineAPIs {

	@Autowired
	UserRepository userRepository;

	@Autowired
	TimelineRepository timelineRepository;

	@PostMapping("/create")
	@PreAuthorize("#username == authentication.principal.username")
	public ResponseEntity<String> createTimeline
	(@PathVariable("username") String username, 
			Timeline timeline) {
		User user = userRepository.findByUsername(username)
				.orElseThrow(() -> 
				new UsernameNotFoundException("User Not Found with -> username: " + username)
						);
	
		user.setTimeline(timeline);

		userRepository.save(user);

		return ResponseEntity.ok().body("Timeline has been successfully created!");
	}

	@GetMapping
	public ResponseEntity<?> getTimeline(@PathVariable("username") String username) {
		User user = userRepository.findByUsername(username)
				.orElseThrow(() -> 
				new UsernameNotFoundException("User Not Found with -> username: " + username)
						);

		return ResponseEntity.ok(user.getTimeline());
	}

	@PutMapping
	@PreAuthorize("#username == authentication.principal.username")
	public ResponseEntity<String> editTimeline(@PathVariable("username") String username, 
			@RequestBody Timeline timeline) {

		User user = userRepository.findByUsername(username)
				.orElseThrow(() -> 
				new UsernameNotFoundException("User Not Found with -> username: " + username)
						);
		
		Timeline oldTimeline = user.getTimeline();
		Long timelineId = oldTimeline.getId();
		Date created_at = oldTimeline.getCreated_at();
		
		timeline.setCreated_at(created_at);
		timeline.setId(timelineId);
		
		user.setTimeline(timeline);
		userRepository.save(user);

		return ResponseEntity.ok().body("Timeline saved!");
	}
}
