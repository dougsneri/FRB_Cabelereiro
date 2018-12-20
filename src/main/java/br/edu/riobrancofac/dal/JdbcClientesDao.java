package br.edu.riobrancofac.dal;

import java.util.ArrayList;
import java.util.List;

import br.edu.riobrancofac.entidades.Cliente;
import br.edu.riobrancofac.mapper.AgendamentoMapper;
import br.edu.riobrancofac.mapper.ClienteMapper;

public class JdbcClientesDao extends JdbcDao {

	public void incluirCliente(Cliente cliente) throws Exception {
		try {
			String sql = "INSERT INTO CLIENTES (NOME, GENERO, TELEFONE) VALUES (?, ?, ?)";

			jdbcTemplate.update(sql, 
					cliente.getNome(),
					cliente.getGenero(),
					cliente.getTelefone());
		} catch (Exception e) {
			throw e;
		}
	}
	
	public List<Cliente> listarClientes() throws Exception{
		List<Cliente> clientes = new ArrayList<>();
		try {
			clientes = jdbcTemplate.query("SELECT * FROM CLIENTES", new ClienteMapper());
		} catch (Exception e) {
			throw e;
		}
		return clientes;
		}
	
	public Cliente buscarClientes(int idCliente) throws Exception{
		Cliente cliente = null;
		try {
//			String sql = "SELECT * FROM CLIENTES WHERE IDCLIENTE=?";
//			cliente = this.jdbcTemplate.queryForObject(sql, new Integer[] { idCliente }, new ClienteMapper());
			cliente = jdbcTemplate.queryForObject("SELECT * FROM CLIENTES WHERE IDCLIENTE=?",
					new Integer[] {idCliente},
					new ClienteMapper());
		} catch (Exception e) {
			throw e;
		}
		return cliente;
	}
}
