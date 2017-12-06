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

import com.example.logic.Admin;

@Repository
public class AdminDaoImpl implements AdminDao{

	private  JdbcTemplate jdbcTemplate; 	

	@Override
	public List<Admin> listAllAdmin() {
		// TODO Auto-generated method stub		
		String sql = "SELECT idAdmin, nombre, apellidoAdmin, correoAdmin, estadoAdmin FROM admin";

		List<Admin> listContact = jdbcTemplate.query(sql, new RowMapper<Admin>() {

			@Override
			public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Admin aContact = new Admin();		
				aContact.setIdAdmin(rs.getInt("idAdmin"));
				aContact.setNombre(rs.getString("nombre"));
				aContact.setApellidoAdmin(rs.getString("apellidoAdmin"));
				aContact.setCorreoAdmin(rs.getString("correoAdmin"));
				aContact.setEstadoAdmin(rs.getString("estadoAdmin").charAt(0));
				return aContact;
			}

		});		 
		return listContact;
	}

	@Override
	public void addAdmin(Admin admin) {
		String sql = "INSERT INTO admin(nombre,apellidoAdmin,celularAdmin,correoAdmin,direccionAdmin,contrasenaAdmin) values (?, ?, ?, ?, ?, ?)";

		jdbcTemplate.update(sql,
				admin.getNombre(),
				admin.getApellidoAdmin(),
				admin.getCelularAdmin(),
				admin.getCorreoAdmin(),
				admin.getDireccionAdmin(),
				admin.getContrasenaAdmin());		
	}

	@Override
	public void updateAdmin(Admin admin) {
		// TODO Auto-generated method stub
		String sql = "UPDATE admin SET nombre = '" + admin.getNombre()
		+ "', apellidoAdmin = '" + admin.getApellidoAdmin()
		+ "', celularAdmin = '" + admin.getCelularAdmin()
		+ "', correoAdmin = '" + admin.getCorreoAdmin()
		+ "', direccionAdmin = '" + admin.getDireccionAdmin()
		+ "', contrasenaAdmin = '" + admin.getContrasenaAdmin()
		+ "', estadoAdmin = '" + admin.getEstadoAdmin() + "' WHERE idAdmin = "+ admin.getIdAdmin()+"";

		jdbcTemplate.update(sql);

	}


	@Override
	public void deleteAdmin(Admin admin) {		
		String sql ="DELETE FROM admin WHERE id = ? ";
		jdbcTemplate.update("DELETE FROM admin WHERE idAdmin = ?", new Object[] { admin.getIdAdmin() });
		// TODO Auto-generated method stub

	}

	@Override
	public Admin findAdminById(int id) {
		// TODO Auto-generated method stub
		String sql = "SELECT * FROM admin WHERE idAdmin = " + id;
		List<Admin> listContact = jdbcTemplate.query(sql, new RowMapper<Admin>() {

			@Override
			public Admin mapRow(ResultSet rs, int rowNum) throws SQLException {
				// TODO Auto-generated method stub

				Admin aContact = new Admin();		
				aContact.setIdAdmin(rs.getInt("idAdmin"));
				aContact.setNombre(rs.getString("nombre"));
				aContact.setApellidoAdmin(rs.getString("apellidoAdmin"));
				return aContact;
			}

		});		 

		return listContact.get(0);		
	}

	public void changeStateAdmin(int idAdmin, char state){

		String sql = "UPDATE admin SET estadoAdmin = '" + state 
		+ "' WHERE idAdmin = "+ idAdmin +"";

		jdbcTemplate.update(sql);

	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}

}
