package com.example.test;

import static org.junit.Assert.*;

import org.junit.Test;

import com.example.dao.AdminDao;
import com.example.dao.AdminDaoImpl;
import com.example.logic.Admin;

public class AdminTest {

	@Test
	public void testFindAdminById() {
		
		AdminDaoImpl resultado = null;
		AdminDaoImpl esperado = null;
		
		assertEquals(esperado, resultado);
	}

}
