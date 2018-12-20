package br.edu.riobrancofac.dal;

import java.util.ArrayList;
import java.util.List;

import br.edu.riobrancofac.entidades.Procedimento;
import br.edu.riobrancofac.mapper.ProcedimentoMapper;

public class JdbcProcedimentosDao extends JdbcDao{
	
	public void incluirProcedimento(Procedimento procedimento) throws Exception {
		try {
			String sql = "INSERT INTO PROCEDIMENTOS (DESCRICAO, VALOR) VALUES (?, ?)";
			jdbcTemplate.update(sql,
					procedimento.getDescricao(),
					procedimento.getValor());
		} catch (Exception e) {
			throw e;
		}
	}

	public List<Procedimento> listarProcedimentos() throws Exception{
		List<Procedimento> procedimentos = new ArrayList<>();
		try {
			procedimentos = jdbcTemplate.query("SELECT * FROM PROCEDIMENTOS", new ProcedimentoMapper());
		} catch (Exception e) {
			throw e;
		}
		return procedimentos;
	}
	
	public Procedimento buscarProcedimento(int idProcedimento) throws Exception{
		Procedimento procedimento = null;
		try {
			procedimento = jdbcTemplate.queryForObject("SELECT * FROM PROCEDIMENTOS WHERE IDPROCEDIMENTO=?",
					new Integer[] {idProcedimento},
					new ProcedimentoMapper());
		} catch (Exception e) {
			throw e;
		}
		return procedimento;
	}
}
