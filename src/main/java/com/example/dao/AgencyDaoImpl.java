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

import com.example.logic.Agency;

@Repository
public class AgencyDaoImpl implements AgencyDao{

	private  JdbcTemplate jdbcTemplate; 	

	@Override
	public List<Agency> listAllAgency() {
		// TODO Auto-generated method stub		
		String sql = "SELECT idAgencia, nombreAgencia, rucAgencia, telefonoAgencia FROM agencia";

		List<Agency> listContact = jdbcTemplate.query(sql, new RowMapper<Agency>() {

			@Override
			public Agency mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Agency aContact = new Agency();		
				aContact.setIdAgency(rs.getString("idAgencia"));
				aContact.setNameAgency(rs.getString("nombreAgencia"));
				aContact.setRucAgency(rs.getString("rucAgencia"));
				aContact.setPhoneAgency(rs.getString("telefonoAgencia"));
				return aContact;
			}

		});		 
		return listContact;
	}

	@Override
	public void addAgency(Agency agencia) {
		String sql = "INSERT INTO agencia(nombreAgencia,correoAgencia,rucAgencia,razonsocialAgencia,ubigeoAgencia,direccionAgencia"
				+ ",valoracionAgencia,descripcionAgencia,telefonoAgencia,DiaModAgencia,MesModAgencia,AnioModAgencia,"
				+ "idAdmin,contrasenaAgencia,estadoAgencia) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		jdbcTemplate.update(sql,
				agencia.getNameAgency(),
				agencia.getEmailAgency(),
				agencia.getRucAgency(),
				agencia.getSocialReasonAgency(),
				agencia.getUbigeoAgency(),
				agencia.getAddressAgency(),
				agencia.getRateAgency(),
				agencia.getDescriptionAgency(),
				agencia.getPhoneAgency(),
				agencia.getDayModAgency(),
				agencia.getMonthModAgency(),
				agencia.getYearModAgency(),
				agencia.getCodAdminAgency(),
				agencia.getPasswordAgency(),
				agencia.getStateAgency());		
	}

	@Override
	public void updateAgency(Agency agencia) {
		// TODO Auto-generated method stub
		String sql = "UPDATE agencia SET nombreAgencia = '" + agencia.getNameAgency()
				+ "', correoAgencia = '" + agencia.getEmailAgency()
				+ "', rucAgencia = '" + agencia.getRucAgency()
				+ "', razonsocialAgencia = '" + agencia.getSocialReasonAgency()
				+ "', ubigeoAgencia = '" + agencia.getUbigeoAgency()
				+ "', direccionAgencia = '" + agencia.getAddressAgency()
				+ "', valoracionAgencia = '" + agencia.getRateAgency()
				+ "', descripcionAgencia = '" + agencia.getDescriptionAgency()
				+ "', telefonoAgencia = '" + agencia.getPhoneAgency()
				+ "', DiaModAgencia = '" + agencia.getDayModAgency()
				+ "', MesModAgencia = '" + agencia.getMonthModAgency()
				+ "', AnioModAgencia = '" + agencia.getYearModAgency()
				+ "', idAdmin = '" + agencia.getCodAdminAgency()
				+ "', contrasenaAgencia = '" + agencia.getPasswordAgency()
				+ "', estadoAgencia = '" + agencia.getStateAgency()
				
				+ "' WHERE idAgencia = "+ agencia.getIdAgency()+"";
		
		jdbcTemplate.update(sql);

	}
	

	@Override
	public void deleteAgency(Agency agencia) {		
		String sql ="DELETE FROM agencia WHERE id = ? ";
		jdbcTemplate.update("DELETE FROM agencia WHERE idAgencia = ?", new Object[] { agencia.getIdAgency() });
		// TODO Auto-generated method stub

	}

	@Override
	public Agency findAgencyById(int id) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM agencia WHERE idAgencia = " + id;
		List<Agency> listContact = jdbcTemplate.query(sql, new RowMapper<Agency>() {

			@Override
			public Agency mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Agency aContact = new Agency();		
				aContact.setIdAgency(rs.getString("idAgencia"));
				aContact.setNameAgency(rs.getString("nombreAgencia"));
				aContact.setRucAgency(rs.getString("rucAgencia"));
				return aContact;
			}

		});		 
		
		return listContact.get(0);		
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

}
