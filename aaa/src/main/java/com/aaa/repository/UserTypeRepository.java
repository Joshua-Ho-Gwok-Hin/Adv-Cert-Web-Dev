package com.aaa.repository;

import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.aaa.model.UserType;

@Repository
public interface UserTypeRepository extends JpaRepository<UserType, Long>{
	@Query( "select r from UserType r where r.userTypeName = :userType" )
	Optional<UserType> findByUserTypeName(@Param("userType") String userType);	
}