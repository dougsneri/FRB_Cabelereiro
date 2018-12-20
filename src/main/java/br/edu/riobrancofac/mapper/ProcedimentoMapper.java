package br.edu.riobrancofac.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import br.edu.riobrancofac.entidades.Procedimento;

public class ProcedimentoMapper implements RowMapper<Procedimento> {
	
	@Override
	public Procedimento mapRow(ResultSet rs, int arg1) throws SQLException{
		Procedimento procedimento = new Procedimento();
		procedimento.setIdProcedimento(rs.getInt("IDPROCEDIMENTO"));
		procedimento.setDescricao(rs.getString("DESCRICAO"));
		procedimento.setValor(rs.getDouble("VALOR"));
		
		return procedimento;
	}

}
