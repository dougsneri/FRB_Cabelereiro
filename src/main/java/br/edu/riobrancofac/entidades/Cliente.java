package br.edu.riobrancofac.entidades;
import lombok.Data;

@Data
public class Cliente {

	private int idCliente;
	private String nome;
	private String genero;
	private String telefone;
}
