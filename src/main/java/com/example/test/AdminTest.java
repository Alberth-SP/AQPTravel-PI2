package com.example.test;

import static org.junit.Assert.*;

import org.junit.*;

import com.example.dao.AdminDao;
import com.example.dao.AdminDaoImpl;
import com.example.logic.Admin;

public class AdminTest {
	
	AdminDao admin;
	Admin ad;
	
	@Before
	public void before() {
		admin=new AdminDaoImpl();
		ad=new Admin();
	}
	@Test
	public void testFindAdminById() {
		
		assertEquals(admin.findAdminById(0),null);
	}

}
