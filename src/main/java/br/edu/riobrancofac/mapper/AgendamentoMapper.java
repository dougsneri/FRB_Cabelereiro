package br.edu.riobrancofac.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import br.edu.riobrancofac.entidades.Agendamento;

public class AgendamentoMapper implements RowMapper<Agendamento>{

	public Agendamento mapRow(ResultSet rs, int arg1) throws SQLException {

		Agendamento agendamento = new Agendamento();
		agendamento.setIdAgendamento(rs.getInt("IDAGENDAMENTO"));
		agendamento.setData(rs.getString("DATA"));

		return agendamento;
	}
}