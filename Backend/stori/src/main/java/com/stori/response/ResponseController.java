package com.stori.response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ResponseController {
	
	@Autowired
	ResponseService responseService; 
	
	@RequestMapping(value = "/response", method = RequestMethod.GET, produces = "application/json")
	StringResponse getResponse() {
		return responseService.get();
	}

}
