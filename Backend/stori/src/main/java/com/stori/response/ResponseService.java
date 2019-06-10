package com.stori.response;

import org.springframework.stereotype.Service;

@Service
public class ResponseService {
	
	public StringResponse get() {
		return new StringResponse();
	}
}
