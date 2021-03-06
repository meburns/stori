package com.stori.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.stori.model.Timeline;

@Repository
public interface TimelineRepository extends JpaRepository<Timeline, Long> {
	Optional<Timeline> findByName(String name);
	Boolean existsByName(String name);
}