package dao;

import java.util.List;

import model.Film;

public interface FilmDao {

	List<Film> getAll();
	
	List<Film> getNewestFilms();
	
	List<Film> getFilm(String zanras);
	
	void save(Film film);
	
	Film getById(int id);
	
	void update(Film film, int id);
	
	void delete(int id);
}
