package com.stori.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.stori.model.Box;

@Repository
public interface BoxRepository extends JpaRepository<Box, Long> {
	Optional<Box> findById(Long id);
}