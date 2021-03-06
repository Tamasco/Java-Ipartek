package com.ipartek.formacion.dao.mappers;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.ipartek.formacion.dao.persistence.Ejemplar;
import com.ipartek.formacion.dao.persistence.Libro;

public class EjemplarMapper implements RowMapper<Ejemplar> {

	@Override
	public Ejemplar mapRow(ResultSet rs, int arg1) throws SQLException {
		Ejemplar ejemplar = new Ejemplar();
		
		ejemplar.setCodigo(rs.getInt("codigo"));
		ejemplar.setEditorial(rs.getString("editorial"));
		ejemplar.setnPaginas(rs.getInt("nPaginas"));
		//ejemplar.setCodigoLibro(rs.getInt("codigoLibro"));
		LibroMapper libMapper = new LibroMapper();
		ejemplar.setLibro(libMapper.mapRow(rs, arg1));
		
		UsuarioMapper usuMapper = new UsuarioMapper();
		ejemplar.setUsuario(usuMapper.mapRow(rs, arg1));
		
		return ejemplar;
	}

}
