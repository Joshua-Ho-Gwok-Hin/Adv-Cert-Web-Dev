package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.model.KEDB;
import com.aaa.repository.KEDBRepository;

@Service
@Transactional
public class KEDBService {
	@Autowired
	KEDBRepository repo;
	
	public List<KEDB> listAll(){
		return (List<KEDB>) repo.findAll();
	}
	
	public List<KEDB> search(String keyword) {
		return repo.search(keyword);
		}
}
