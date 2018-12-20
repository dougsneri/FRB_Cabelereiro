package br.edu.riobrancofac.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import br.edu.riobrancofac.dal.JdbcAgendamentosDao;
import br.edu.riobrancofac.dal.JdbcClientesDao;
import br.edu.riobrancofac.dal.JdbcProcedimentosDao;
import br.edu.riobrancofac.entidades.Agendamento;

@Controller
public class AgendamentosController {

	@RequestMapping("/agende")
	public String incluirAgendamento(ModelMap model) {
		try {
			ApplicationContext context = new ClassPathXmlApplicationContext("beanJDBC.xml");
			JdbcClientesDao dao_c = (JdbcClientesDao) context.getBean("clientesDao");
			JdbcProcedimentosDao dao_p = (JdbcProcedimentosDao) context.getBean("procedimentosDao");
			
			model.addAttribute("lista_clientes", dao_c.listarClientes());
			model.addAttribute("lista_procedimentos", dao_p.listarProcedimentos());
			
			return "paginas/agende";
		} catch (Exception e) {
			model.addAttribute("erro", "ERRO: " + e.getMessage());
			return "paginas/erro";
		}
	}

	@RequestMapping(value = "/cadagenda", method = RequestMethod.POST)
	public String incluirAgendamento(int idcliente, int idprocedimento, Agendamento agendamento, ModelMap model) {
		try {
			ApplicationContext context = new ClassPathXmlApplicationContext("beanJDBC.xml");
			
			JdbcClientesDao dao_c = (JdbcClientesDao)context.getBean("clientesDao");
			JdbcProcedimentosDao dao_p = (JdbcProcedimentosDao)context.getBean("procedimentosDao");
			JdbcAgendamentosDao dao_a = (JdbcAgendamentosDao) context.getBean("agendamentosDao");

			agendamento.setIdCliente(dao_c.buscarClientes(idcliente));
			agendamento.setIdProcedimento(dao_p.buscarProcedimento(idprocedimento));
			dao_a.incluirAgendamento(agendamento);
			
			model.addAttribute("mensagem", "Agendamento Incluído com Sucesso");
			
			return "index";
		} catch (Exception e) {
			model.addAttribute("erro", "ERRO: " + e.getMessage());
			return "paginas/erro";
		}
	}
	
//	@RequestMapping({"/buscarplanos"})
//	public String listarPlanos(@RequestParam(value="idplano", required=false) ModelMap model) {
//		try {
//			ApplicationContext context = new ClassPathXmlApplicationContext("beanJDBC.xml");
//			
//		} catch (Exception e) {
//			model.addAttribute("erro", "ERRO: " + e.getMessage());
//			return "cadastros/erro";
//		}
//	}
	@RequestMapping({"/consulte_agendamentos"})
	public String consultarAgendamentos(ModelMap model) {
		return "paginas/consulte_agendamentos";
	}
}
