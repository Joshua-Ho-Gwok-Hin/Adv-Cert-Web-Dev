package com.aaa.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.aaa.model.Login;

@Repository
public interface LoginRepository extends JpaRepository<Login,Long> {
	@Query(value = "SELECT * FROM user_log_in WHERE username = :username AND password = :password", 
			nativeQuery = true)
	Optional<Login> findByUsernameAndPassword(@Param("username")String username, @Param("password") String password);
	public Login findByUsername(String username);
}
	