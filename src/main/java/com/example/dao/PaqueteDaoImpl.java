package com.example.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BatchPreparedStatementSetter;
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
		                    "insert into paquete (idAgencia, nombrePaquete, "
		                    + "precioPaquete, precioOferta, "
		                    + "capacidadPaquete, descripcionPaquete,"
		                    + " numPaquete, estadoPaquete, ofertaPaquete,"
		                    + " tiempoOferta, destinoPaquete, valoracionPaquete,"
		                    + " duracionPaquete, itenerario, servicios,"
		                    + " recomendacionesPaquete, tipoPaquete) "
		                    + "values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ? )",
		                    new String[] { "id" });					
		            
		            ps.setInt(1, paquete.getIdAgencia());
		            ps.setString(2, paquete.getNombrePaquete());
		            ps.setDouble(3, paquete.getPrecioPaquete());
		            ps.setDouble(4,  paquete.getPrecioOferta());
		            ps.setInt(5, paquete.getCapacidadPaquete());		            
		            ps.setString(6, paquete.getDescripcionPaquete());
		            ps.setInt(7, paquete.getNumPaquete());
		            ps.setString(8, Character.toString(paquete.getEstadoPaquete()));
		            ps.setString(9, Character.toString(paquete.getOfertaPaquete()));
		            ps.setInt(10, paquete.getTiempoOferta());
		            ps.setString(11, paquete.getDestinoPaquete());
		            ps.setInt(12, paquete.getValoracionPaquete());
		            ps.setInt(13, paquete.getDuracionPaquete());
		            ps.setString(14, paquete.getItinerario());
		            ps.setString(15, paquete.getServicios());
		            ps.setString(16, paquete.getRecomendaciones());	
		            ps.setString(17, paquete.getTipoPaquete());	
		            return ps;
				}
				
		    }, keyHolder);
		    
		    int id = keyHolder.getKey().intValue();
		    
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

	@Override
	public boolean addDestiny(int idPaquete, int idFoto) {
		String sql = "INSERT INTO fotospaquete(idPaquete,idDestino) values (?, ?)";
		int res = jdbcTemplate.update(sql,idPaquete, idFoto);
		return (res != 0);
		
	}

	@Override
	public void insertDestinations(int idPaquete, List<Integer> listDestiny) {
		// TODO Auto-generated method stub
		String sql = "insert into paquetedestino " +
				"(idPaquete, idDestino) VALUES (?, ?)";

			   jdbcTemplate.batchUpdate(sql, new BatchPreparedStatementSetter() {

				@Override
				public void setValues(PreparedStatement ps, int i) throws SQLException {
					Integer idDestiny = listDestiny.get(i);
					ps.setInt(1, idPaquete);
					ps.setInt(2, idDestiny);
				}

				@Override
				public int getBatchSize() {
					return listDestiny.size();
				}
			  });
		
	}
	
	
	/* request for filter paquet */

	@Override
	public List<Paquete> listFilterPaquetes(Paquete param) {
		// TODO Auto-generated method stub
		
		String query = "select distinct paquete.nombrePaquete, paquete.idPaquete from paquete, paquetedestino, destino where destino.nombreDestino LIKE '%"+param.getDestinoPaquete()+"%' and paquetedestino.idDestino = destino.idDestino AND paquete.idPaquete = paqueteDestino.idPaquete;";
		
		List<Paquete> listPaquet = jdbcTemplate.query(query, new RowMapper<Paquete>() {

			@Override
			public Paquete mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Paquete aPaquet = new Paquete();		
				aPaquet.setIdPaquete(rs.getInt("idPaquete"));			
				aPaquet.setNombrePaquete(rs.getString("nombrePaquete"));					
				return aPaquet;
			}

		});		 
		return listPaquet;	
	}

	

}
