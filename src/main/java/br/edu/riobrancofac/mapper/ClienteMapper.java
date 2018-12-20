package br.edu.riobrancofac.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import br.edu.riobrancofac.entidades.Cliente;

public class ClienteMapper implements RowMapper<Cliente>{

	@Override
	public Cliente mapRow(ResultSet rs, int arg1) throws SQLException{
		Cliente cliente = new Cliente();
		cliente.setIdCliente(rs.getInt("IDCLIENTE"));
		cliente.setNome(rs.getString("NOME"));
		cliente.setGenero(rs.getString("GENERO"));
		cliente.setTelefone(rs.getString("TELEFONE"));
		
		return cliente;
	}
}
