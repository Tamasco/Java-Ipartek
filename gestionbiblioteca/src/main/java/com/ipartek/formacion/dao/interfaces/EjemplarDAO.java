package com.ipartek.formacion.dao.interfaces;

import java.util.List;

import com.ipartek.formacion.dao.persistence.Ejemplar;

public interface EjemplarDAO extends DAOSetter {

	public List<Ejemplar> getAll();
	
	public Ejemplar getById(int id);
	
	public Ejemplar create(Ejemplar ejemplar);
	
	public Ejemplar update(Ejemplar ejemplar);
	
	public void delete(int id);
}