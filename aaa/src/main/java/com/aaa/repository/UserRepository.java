package com.aaa.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.aaa.model.UserProfile;

@Repository
public interface UserRepository extends JpaRepository<UserProfile,Long> {

	@Query(value="SELECT c FROM UserProfile c WHERE c.firstName LIKE '%' || :keyword || '%'"
			+ " OR c.email LIKE '%' || :keyword || '%'"
			+ " OR c.lastName LIKE '%' || :keyword || '%'"
			+ " OR c.country LIKE '%' || :keyword || '%'"
			+ " OR c.city LIKE '%' || :keyword || '%'")
	
	public List<UserProfile> search(@Param("keyword") String keyword);
	public UserProfile findByEmail(String email); //Changed to Optional<>
	public UserProfile findByIdAndEmail(long id, String email);
	public UserProfile findById(long id);
	public UserProfile saveAndFlush(Long id);
}
	
//	public UserProfile findByUsername(String username); Mdm Jey removed this
//	public List<UserProfile> findByLastNameAndFirstName(String lastName, String firstName);
//	public List<UserProfile> findByLastNameOrFirstName(String lastName, String firstName);
//	public List<UserProfile> findByLastNameOrFirstNameOrEmailOrCountryOrCity(String lastName, String firstName, String email, String country, String city);