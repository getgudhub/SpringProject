package dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

import mapper.FilmMapper;
import model.Film;

public class FilmDaoImpl implements FilmDao {

	public final JdbcTemplate jdbcTemplate;
	
	@Autowired
	public FilmDaoImpl (JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	@Override
	public List<Film> getAll(){
		String sql ="SELECT * FROM films";
		return jdbcTemplate.query(sql,  new FilmMapper());
	}
	
	@Override
	public List<Film> getFilm(String zanras){
		String sql ="SELECT * FROM films WHERE zanras LIKE '%"+zanras+"%' ";
		return jdbcTemplate.query(sql,  new FilmMapper());
	}
	
	@Override
	public List<Film> getNewestFilms(){
		String sql ="SELECT * FROM films ORDER BY nuoKada DESC ";
		return jdbcTemplate.query(sql,  new FilmMapper());
	}
	
	@Override
	public void save(Film film) {
		String sql = "INSERT INTO films (pavadinimas, zanras, rezisierius, aktoriai, nuoKada, trukme) VALUES (?, ?, ?, ?, ?, ?)";
		jdbcTemplate.update(sql, film.getPavadinimas(), film.getZanras(), film.getRezisierius(), film.getAktoriai(), film.getNuoKada(), film.getTrukme());
	}
	
	@Override
	public Film getById(int id) {
		String sql = "SELECT * FROM films WHERE id = ?";
		return jdbcTemplate.queryForObject(sql, new FilmMapper(), id);
	}
	
	@Override 
	public void update(Film film, int id) {
		String sql = "UPDATE films SET pavadinimas = ?, zanras = ?, rezisierius = ?, aktoriai = ?, nuoKada = ?, trukme = ? WHERE id =" +id;
		jdbcTemplate.update(sql, film.getPavadinimas(), film.getZanras(), film.getRezisierius(), film.getAktoriai(), film.getNuoKada(), film.getTrukme());
	}
	
	@Override
	public void delete(int id) {
		String sql = "DELETE FROM films WHERE id = ?";
		jdbcTemplate.update(sql, id);
	}
}
