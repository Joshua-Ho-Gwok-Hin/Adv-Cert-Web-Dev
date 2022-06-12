package com.aaa.exceptions;

public class DuplicateEmailException extends Exception {
	public DuplicateEmailException() {
		super("Email has registered before!");
	}
	
	public DuplicateEmailException(String email) {
		super(email + " has taken before!");
	}

}
