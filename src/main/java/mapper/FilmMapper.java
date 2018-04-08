package mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import model.Film;

public class FilmMapper implements RowMapper<Film> {

	@Override
	public Film mapRow(ResultSet rs, int rowNum) throws SQLException{
		Film film = new Film();
		film.setId(rs.getInt("id"));
		film.setPavadinimas(rs.getString("pavadinimas"));
		film.setZanras(rs.getString("zanras"));
		film.setRezisierius(rs.getString("rezisierius"));
		film.setAktoriai(rs.getString("aktoriai"));
		film.setNuoKada(rs.getDate("nuoKada"));
		film.setTrukme(rs.getInt("trukme"));
		return film;
	}
}
