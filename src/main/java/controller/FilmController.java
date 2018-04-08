package controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Film;
import service.FilmService;

@Controller
@RequestMapping("/")
public class FilmController {
	
	private static final Logger logger = LoggerFactory.getLogger(FilmController.class);

	
	@Autowired
	public FilmService filmService;
	
	/*@Autowired
	@Qualifier("formValidator")
	private Validator validator;

	@InitBinder
	private void initBinder(WebDataBinder binder) {
		binder.setValidator(validator);
	}
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	    dateFormat.setLenient(false);
	    binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}*/
	
	
	//HttpServletRequest inspects my "url" request to get "value"
	//PathVariable takes the path's value
	//Model created a model wich i add like an attribute(films list)
	@RequestMapping(value= {"/Komedija", "/Lietuviskas", "/Dokumentika", "/Drama", "/Siaubo", "/Animacija", "/Istorinis", "/Fantastinis", "/Veiksmo" }, method = RequestMethod.GET)
	public String getComedyFilms(HttpServletRequest request,/* @PathVariable String zanras,*/ Model model) throws Exception {
			String requestedPath = request.getServletPath();
			String result="fail"; 
        if (requestedPath.equals("/Komedija"))
            result = "omedija";
        else if (requestedPath.equals("/Lietuviskas"))
            result = "ietuviskas";
        else if (requestedPath.equals("/Dokumentika"))
            result = "okumentika";
        else if (requestedPath.equals("/Drama"))
            result = "rama";
        else if (requestedPath.equals("/Siaubo"))
            result = "iaubo";
        else if (requestedPath.equals("/Animacija"))
            result = "nimacija";
        else if (requestedPath.equals("/Istorinis"))
            result = "storinis";
        else if (requestedPath.equals("/Fantastinis"))
            result = "antastinis";
        else if (requestedPath.equals("/Veiksmo"))
            result = "eiksmo";
		model.addAttribute("films", filmService.getFilm(result));
		return "index";
	}
	
	
	@RequestMapping(value= "/Naujausi", method = RequestMethod.GET)
	public String getNewestFilms( Model model) {
		model.addAttribute("films", filmService.getNewestFilms());
		return "index";
	}
	
	@RequestMapping(value= "/", method = RequestMethod.GET)
	public String getAllFilms(Locale locale, Model model) {
		model.addAttribute("films", filmService.getAll());
		logger.info("This goes into log: ", locale);
		return "index";
	}
	
	@GetMapping("/film/{id}")
	public String getById(@PathVariable("id") int id, Model model) {
		model.addAttribute("film", filmService.getById(id));
		return "showFilm";
	}
	
	@PostMapping("/addFilm")
	public String addFilm(@Valid Film film, BindingResult bindingResult, Model model) {
		if(!bindingResult.hasErrors()) {
			model.addAttribute("noErrors", true);
			filmService.save(film);
		}
		return "createFilm";
	}
	
	@GetMapping("/addFilm")
	public String createUserPage(Model model) {
		model.addAttribute("film", new Film());
		return "createFilm";
	}
	
	@GetMapping("/update/{id}")
	public String update(@PathVariable("id")int id, Model model) {
		model.addAttribute("film", filmService.getById(id));
		return "editFilm";
	}
	
	@PostMapping("/updateFilm/{id}") 
	public String updateUser(@PathVariable("id")int id, @Valid Film film, BindingResult bindingResult, Model model) {
		if(!bindingResult.hasErrors()) {
			model.addAttribute("noErrors", true);
			
		}filmService.update(film, id);
		return "editFilm";
	}
	
	@GetMapping("/delete/{id}")
	public String delete(@PathVariable("id")int id) {
		filmService.delete(id);
		return "redirect:/";
	}
	
}
