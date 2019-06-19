package com.stori.message;

public class StringResponse {
	
	private String response;
	
	public StringResponse() { 
		this.response = "JSON of a JGUN";
	}

    public StringResponse(String s) { 
       this.response = s;
    }
    
    public String getResponse() {
    	return this.response;
    }
    
    public void setResponse(String r) {
    	this.response = r;
    }
}
