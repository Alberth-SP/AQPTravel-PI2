package com.aqptravel.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.aqptravel.logic.Paquete;
@Repository
public class PaqueteDaoImpl implements PaqueteDao {
	
	private  JdbcTemplate jdbcTemplate;


	public List<Paquete> listAllPaquetes() {
		// TODO Auto-generated method stub
		
		String sql = "SELECT idPaquete, idAgencia, nombrePaquete, numPaquete, estadoPaquete, destinoPaquete FROM paquete";

		List<Paquete> listPaquet = jdbcTemplate.query(sql, new RowMapper<Paquete>() {


			public Paquete mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Paquete aPaquet = new Paquete();		
				aPaquet.setIdPaquete(rs.getInt("idPaquete"));
				aPaquet.setIdPaquete(rs.getInt("idAgencia"));				
				aPaquet.setNombrePaquete(rs.getString("nombrePaquete"));				
				aPaquet.setNumPaquete(rs.getInt("numPaquete"));					
				aPaquet.setEstadoPaquete(rs.getString("estadoPaquete").charAt(0));				
				aPaquet.setDestinoPaquete(rs.getString("destinoPaquete"));
				
				return aPaquet;
			}

		});		 
		return listPaquet;
	}


	public void addPaquete(Paquete admin) {
		// TODO Auto-generated method stub
		
	}


	public void updatePaquete(Paquete admin) {
		// TODO Auto-generated method stub
		
	}


	public void deletePaquete(Paquete admin) {
		// TODO Auto-generated method stub
		
	}


	public Paquete findPaqueteById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	public void changeStatePaquete(int id, char state) {
		// TODO Auto-generated method stub
		
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

}