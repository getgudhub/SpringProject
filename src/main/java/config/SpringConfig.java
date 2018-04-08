package config;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import dao.FilmDao;
import dao.FilmDaoImpl;
import service.FilmServiceImpl;
import service.FilmService;

@Configuration
public class SpringConfig {

	@Bean
	public JdbcTemplate getJdbcTemplate() {
		return new JdbcTemplate(getDataSource());
	}
	
	@Bean
	public DataSource getDataSource() {
		DriverManagerDataSource dataSource= new DriverManagerDataSource();
		dataSource.setUrl("jdbc:mysql://localhost:3306/duombaze");
		dataSource.setUsername("root");
		dataSource.setPassword("");
		dataSource.setDriverClassName("com.mysql.jdbc.Driver");
		return dataSource;
		
	}
	
	@Bean
	public FilmDao getFilmDao() {
		return new FilmDaoImpl(getJdbcTemplate());
	}
	
	@Bean
	public FilmService getFilmService() {
		return new FilmServiceImpl();	}
}
