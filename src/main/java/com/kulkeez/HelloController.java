package com.kulkeez;

import org.springframework.web.bind.annotation.RestController;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * The class is flagged as a @RestController, meaning it’s ready for use by Spring MVC to handle web requests. 
 * @RequestMapping maps / to the index() method. When invoked from a browser or using 
 * curl on the command line, the method returns pure text.
 * 
 * @author kulkeez
 *
 */
@RestController
public class HelloController {

	@RequestMapping("/")
	/**
	 * 
	 * Here, we do not specify GET versus PUT, POST, and so forth. 
	 * By default @RequestMapping maps all HTTP operations. 
	 * You can use @GetMapping or @RequestMapping(method=GET) to narrow this mapping.
	 * 
	 * @return
	 */
	public Map<String, String> index() {
        
    	// create mock/hard-coded JSON structure containing Greetings
    	HashMap<String, String> map = new HashMap<>();

	    map.put("Date", new Date().toString());
	    map.put("Message", "Greetings from Sookti !");
        	
        return map;
    }
}
