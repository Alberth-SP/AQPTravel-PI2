package com.example.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.example.logic.Actividad;
import com.example.logic.Admin;

import com.example.logic.Agency;

public class AgenciaDao implements InterfaceDao<Agency>{
	
	private  JdbcTemplate jdbcTemplate; 

	public List<Agency> listAll() {
		String sql = "SELECT idAdmin, nombre, apellidoAdmin, correoAdmin, estadoAdmin FROM admin";

		List<Agency> listContact = jdbcTemplate.query(sql, new RowMapper<Agency>() {


			public Agency mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Agency aContact = new Agency.BuildAgency(rs.getString("nombreAgencia"))
						.setEmail(rs.getString("correoAgencia"))
						.setRuc(rs.getString("rucAgencia"))
						.setSocialReason(rs.getString("razonsocialAgencia"))
						.setUbigeo(rs.getString("ubigeoAgencia"))
						.setAddress(rs.getString("direccionAgencia"))
						.setRate(rs.getInt("valoracionAgencia"))
						.setDescription(rs.getString("descripcionAgencia"))
						.setPhone(rs.getString("telefonoAgencia"))
						.setDayMod(rs.getInt("diaModAgencia"))
						.setMonthMod(rs.getInt("mesModAgencia"))
						.setYearMod(rs.getInt("anioModAgencia"))
						.setCodAdmin(rs.getInt("idAdmin"))
						.setPassword(rs.getString("contrasenaAgencia"))
						.build();
				aContact.setIdAgency(rs.getInt("idAgencia"));
				aContact.setState(rs.getString("estadoAgencia"));
				return aContact;
			}

		});		 
		return listContact;
	}

	public void add(Agency t) {
		
		String sql = "INSERT INTO agency(nombreAgencia,correoAgencia,rucAgencia,razonsocialAgencia"
				+ ",ubigeoAgencia,direccionAgencia,valoracionAgencia,descripcionAgencia"
				+ ",telefonoAgencia,diaModAgencia,mesModAgencia,anioModAgencia,idAdmin"
				+ ",contrasenaAdmin,estadoAgencia) values (?, ?, ?, ?, ?, ?,?,?, ?, ?, ?, ?, ?,?)";

		jdbcTemplate.update(sql,
				t.getName(),
				t.getEmail(),
				t.getRuc(),
				t.getSocialReason(),
				t.getUbigeo(),
				t.getAddress(),
				t.getRate(),
				t.getDescription(),
				t.getPhone(),
				t.getDayMod(),
				t.getMonthMod(),
				t.getYearMod(),
				t.getCodAdmin(),
				t.getPassword(),
				t.getState()
				);	
		
	}

	public void update(Agency t) {
		String sql = "UPDATE agencia SET nombreAgencia = '" + t.getName()
		+ "', correoAgencia = '" + t.getEmail()
		+ "', rucAgencia = '" + t.getRuc()
		+ "', razonsocialAgencia = '" + t.getSocialReason()
		+ "', ubigeoAgencia = '" + t.getUbigeo()
		+ "', direccionAgencia = '" + t.getAddress()
		+ "', valoracionAgencia = '" + t.getRate()
		+ "', descripcionAgencia = '" + t.getDescription()
		+ "', telefonoAgencia = '" + t.getPhone()
		+ "', diaModAgencia = '" + t.getDayMod()
		+ "', mesModAgencia = '" + t.getMonthMod()
		+ "', anioModAgencia = '" + t.getPassword()
		+ "', idAdmin = '" + t.getCodAdmin()
		+ "', contrasenaAgencia = '" + t.getPassword()
		+ "', estadoAgencia = '" + t.getPassword()
		+ "' WHERE idAgencia = "+ t.getIdAgency()+"";

		jdbcTemplate.update(sql);
		
	}

	public void delete(Agency t) {
		String sql ="DELETE FROM admin WHERE id = ? ";
		jdbcTemplate.update(sql, t.getIdAgency());
		
	}

	public Agency findById(int id) {
		String sql = "SELECT * FROM agencia WHERE idAgencia = " + id;
		List<Agency> listContact = jdbcTemplate.query(sql, new RowMapper<Agency>() {


			public Agency mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Agency aContact = new Agency.BuildAgency(rs.getString("nombreAgencia"))
						.setEmail(rs.getString("correoAgencia"))
						.setRuc(rs.getString("rucAgencia"))
						.setSocialReason(rs.getString("razonsocialAgencia"))
						.setUbigeo(rs.getString("ubigeoAgencia"))
						.setAddress(rs.getString("direccionAgencia"))
						.setRate(rs.getInt("valoracionAgencia"))
						.setDescription(rs.getString("descripcionAgencia"))
						.setPhone(rs.getString("telefonoAgencia"))
						.setDayMod(rs.getInt("diaModAgencia"))
						.setMonthMod(rs.getInt("mesModAgencia"))
						.setYearMod(rs.getInt("anioModAgencia"))
						.setCodAdmin(rs.getInt("idAdmin"))
						.setPassword(rs.getString("contrasenaAgencia"))
						.build();
				aContact.setIdAgency(rs.getInt("idAgencia"));
				aContact.setState(rs.getString("estadoAgencia"));		
				return aContact;
			}

		});		 

		return listContact.get(0);
	}

	public void changeState(int id, char state) {
		String sql = "UPDATE agencia SET estadoAgencia = '" + state 
				+ "' WHERE idAgencia = "+ id +"";
				jdbcTemplate.update(sql);
		
	}
	public Agency findByEmail(String val) {
		String sql = "SELECT * FROM admin WHERE correoAdmin = " + val;
		List<Agency> listContact = jdbcTemplate.query(sql, new RowMapper<Agency>() {


			public Agency mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Agency aContact = new Agency.BuildAgency(rs.getString("nombreAgencia"))
						.setEmail(rs.getString("correoAgencia"))
						.setPassword(rs.getString("contrasenaAgencia"))
						.build();
				aContact.setState(rs.getString("estadoAgencia"));
				aContact.setIdAgency(rs.getInt("idAgencia"));
				return aContact;
			}

		});		 
		return listContact.get(0);
	}

}
