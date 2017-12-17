package com.example.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.example.logic.FotosPaquete;
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
	public int addPaquete(Paquete paquete) {	
		 
		 GeneratedKeyHolder holder = new GeneratedKeyHolder();
		 KeyHolder keyHolder = new GeneratedKeyHolder();
		    this.jdbcTemplate.update(new PreparedStatementCreator() {
		       
				@Override
				public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
					// TODO Auto-generated method stub
					PreparedStatement ps = connection.prepareStatement(
		                    "insert into paquete (idAgencia, nombrePaquete, descripcionPaquete) values (?, ?, ?)",
		                    new String[] { "id" });					
		            
		            ps.setInt(1, 3);
		            ps.setString(2, paquete.getNombrePaquete());
		            ps.setString(3, paquete.getDescripcionPaquete());
		            return ps;
				}

				
		    }, keyHolder);
		    int id= keyHolder.getKey().intValue();
		    System.out.println("TU ID ES: "+id);
		    return id;
		    
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
	
	
	@Override
	public boolean addFotoPaquete(FotosPaquete foto) {
		// TODO Auto-generated method stub
		String sql = "INSERT INTO fotospaquete(idPaquete,nombreFoto,imagenFoto) values (?, ?, ?)";

		int res = jdbcTemplate.update(sql,foto.getIdPaquete(), foto.getNombreFoto(), foto.getImagenFoto());
		return (res != 0);
	}
	
	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

	

}
