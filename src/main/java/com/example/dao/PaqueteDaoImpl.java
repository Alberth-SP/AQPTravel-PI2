package com.example.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.logic.Paquete;
@Repository
public class PaqueteDaoImpl implements PaqueteDao {
	
	private  JdbcTemplate jdbcTemplate;

	@Override
	public List<Paquete> listAllPaquetes() {
		// TODO Auto-generated method stub
		
		String sql = "SELECT idPaquete, idAgencia, nombrePaquete, numPaquete, estadoPaquete, destinoPaquete FROM paquete";

		List<Paquete> listPaquet = jdbcTemplate.query(sql, new RowMapper<Paquete>() {

			@Override
			public Paquete mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Paquete aPaquet = new Paquete();		
				aPaquet.setIdPaquete(rs.getInt("idPaquete"));
				aPaquet.setIdAgencia(rs.getInt("idAgencia"));				
				aPaquet.setNombrePaquete(rs.getString("nombrePaquete"));				
				aPaquet.setNumPaquete(rs.getInt("numPaquete"));					
				aPaquet.setEstadoPaquete(rs.getString("estadoPaquete").charAt(0));				
				aPaquet.setDestinoPaquete(rs.getString("destinoPaquete"));
				
				return aPaquet;
			}

		});		 
		return listPaquet;
	}

	@Override
	public void addPaquete(Paquete paquete) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO paquete(idAgencia,nombrePaquete,descripcionPaquete) values (?, ?, ?)";

		jdbcTemplate.update(sql, 3, paquete.getNombrePaquete(), paquete.getDescripcionPaquete());
		
		
	}

	@Override
	public void updatePaquete(Paquete admin) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void deletePaquete(Paquete admin) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Paquete findPaqueteById(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public void changeStatePaquete(int idPaquete, char state) {
		// TODO Auto-generated method stub
		System.out.println("state: "+ state);
		String sql = "UPDATE paquete SET estadoPaquete = '" + state 
				+ "' WHERE idPaquete = "+ idPaquete +"";

				int res = jdbcTemplate.update(sql);
				if(res == 1) 
					System.out.println("state: "+ state);
		
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

}
