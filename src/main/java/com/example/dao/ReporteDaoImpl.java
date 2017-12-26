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
import com.example.logic.Rol;
import com.example.logic.User;
import com.example.logic.Utilidades;
import com.example.logic.Agencia;
import com.example.logic.Customer;
import com.example.logic.FotosPaquete;
import com.example.logic.Pago;
import com.example.logic.Paquete;


public class ReporteDaoImpl implements ReporteDao {

	private  JdbcTemplate jdbcTemplate; 
	@Override
	public void mostrarVentas(Customer cus, Paquete paq, Agencia ag, Pago pag) {
		String sql = "SELECT name, nombrepaquete,precioPaquete, nombreAgencia" + 
				"FROM Customer, Paquete, Agencia";
	 
	}
	@Override
	public void mostrarAgenciasClientes(Customer cus, Agencia ag) {
		// TODO Auto-generated method stub
		
	}

}
