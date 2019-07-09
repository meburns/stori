package com.stori.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.stori.model.Block;

@Repository
public interface BlockRepository extends JpaRepository<Block, Long> {
	Optional<Block> findById(Long id);
}