package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.FilmDao;
import model.Film;

@Service
public class FilmServiceImpl implements FilmService{

	@Autowired
	public FilmDao filmDao;
	
	@Override
	public List<Film> getAll(){
		return filmDao.getAll();
	}
	
	@Override
	public List<Film> getFilm(String zanras){
		return filmDao.getFilm( zanras);
	}
	
	@Override
	public void save(Film film) {
		filmDao.save(film);
	}
	
	@Override
	public Film getById(int id) {
		return filmDao.getById(id);
	}
	
	@Override
	public void update(Film film, int id) {
		filmDao.update(film, id);
	}
	
	@Override
	public void delete(int id) {
		filmDao.delete(id);
	}

	@Override
	public List<Film> getNewestFilms() {
		return filmDao.getNewestFilms();
	}
}
