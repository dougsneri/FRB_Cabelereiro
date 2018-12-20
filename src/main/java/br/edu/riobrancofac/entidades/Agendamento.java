package br.edu.riobrancofac.entidades;
import lombok.Data;

@Data
public class Agendamento {
	
	private int idAgendamento;
	private Cliente idCliente;
	private String data;
	private Procedimento idProcedimento;
}
