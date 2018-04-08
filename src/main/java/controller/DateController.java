package controller;

import java.time.LocalDate;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import model.Film;

@RestController
@RequestMapping("/api/datetime/")
public class DateController {
	
	@RequestMapping(value = "date", method = RequestMethod.POST)
	public void processDate(@RequestParam("date")
		@DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate date){
	
	}
		

}
