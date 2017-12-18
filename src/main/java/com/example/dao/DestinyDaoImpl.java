package com.example.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;


import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.example.logic.Admin;
import com.example.logic.Destiny;

public class DestinyDaoImpl implements DestinyDao {

	private  JdbcTemplate jdbcTemplate;

	@Override
	public List<Destiny> listAllDestiny() {
		// TODO Auto-generated method stub


		// TODO Auto-generated method stub		
		String sql = "SELECT idDestino, nombreDestino FROM destino";

		List<Destiny> listDestiny = jdbcTemplate.query(sql, new RowMapper<Destiny>() {


			public Destiny mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Destiny aDestiny = new Destiny();

				aDestiny.setIdDestino(rs.getInt("idDestino"));
				aDestiny.setNombreDestino(rs.getString("nombreDestino"));
				return aDestiny;
			}

		});		 
		return listDestiny;
	}



	@Override
	public void addDestiny(Destiny destiny) {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateDestiny(Destiny destiny) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteDestiny(Destiny destiny) {
		// TODO Auto-generated method stub

	}

	@Override
	public Destiny findDestinyById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void changeStateDestiny(int id, char state) {
		// TODO Auto-generated method stub

	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

}
