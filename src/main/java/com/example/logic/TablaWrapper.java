package com.example.logic;

import java.util.List;

public class TablaWrapper<T> {

	private List<T> tipes;

	public List<T> getTipes() {
		return tipes;
	}

	public void setAdmins(List<T> tipes) {
		this.tipes = tipes;
	}
}
