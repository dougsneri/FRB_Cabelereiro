package br.edu.riobrancofac.dal;

import java.util.ArrayList;
import java.util.List;

import br.edu.riobrancofac.entidades.Agendamento;
import br.edu.riobrancofac.mapper.AgendamentoMapper;

public class JdbcAgendamentosDao extends JdbcDao {

	public void incluirAgendamento(Agendamento agendamento) throws Exception {
		try {
			String sql = "INSERT INTO AGENDAMENTOS (IDCLIENTE, DATA, IDPROCEDIMENTO) VALUES (?, ?, ?)";
			jdbcTemplate.update(sql, 
					agendamento.getIdCliente().getIdCliente(), 
					agendamento.getData(), 
					agendamento.getIdProcedimento().getIdProcedimento());
		} catch (Exception e) {
			throw e;
		}
	}

	public List<Agendamento> listarAgendamentos() throws Exception {
		List<Agendamento> agendamentos = new ArrayList<>();
		try {
			agendamentos = jdbcTemplate.query("SELECT * FROM AGENDAMENTOS", new AgendamentoMapper());
		} catch (Exception e) {
			throw e;
		}
		return agendamentos;
	}

	public Agendamento buscarAgendamento(Integer idAgendamento) {
		Agendamento agendamento = null;
		try {
//			String sql = "SELECT * FROM AGENDAMENTOS WHERE IDAGENDAMENTO=?";
//			agendamento = this.jdbcTemplate.queryForObject(sql, new Integer[] { idAgendamento }, new AgendamentoMapper());
			
			agendamento = jdbcTemplate.queryForObject("SELECT * FROM AGENDAMENTOS WHERE IDAGENDAMENTO=?", new Integer[] {idAgendamento}, new AgendamentoMapper());
		} catch (Exception e) {
			throw e;
		}
		return agendamento;
	}

}
