package com.aaa.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.aaa.model.KEDB;

public interface KEDBRepository extends JpaRepository<KEDB,Long> {
	@Query(value="SELECT c FROM KEDB c WHERE c.author LIKE '%' || :keyword || '%'"
			+ " OR c.problemDescription LIKE '%' || :keyword || '%'"
			+ " OR c.priority LIKE '%' || :keyword || '%'"
			+ " OR c.status LIKE '%' || :keyword || '%'"
			+ " OR c.resolution LIKE '%' || :keyword || '%'")
	public List<KEDB> search(@Param("keyword") String keyword);
}
	

