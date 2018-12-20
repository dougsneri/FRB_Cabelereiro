package br.edu.riobrancofac.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.riobrancofac.dal.JdbcClientesDao;
import br.edu.riobrancofac.entidades.Cliente;

@Controller
public class ClientesController {
	@RequestMapping("/cadastroCliente")
	public String incluirCliente(ModelMap model) {
		
		try {
			ApplicationContext context = new ClassPathXmlApplicationContext("beanJDBC.xml");
			JdbcClientesDao dao_p = (JdbcClientesDao)context.getBean("clientesDao");
			return "paginas/incluirCliente";
			
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("erro", "ERRO: " + e.getMessage());
			return "paginas/erro";
		}		
	}
	
	@RequestMapping(value = "/cadcliente", method=RequestMethod.POST)
	public String incluirCliente(Cliente cliente, ModelMap model) {
		try {
			ApplicationContext context = new ClassPathXmlApplicationContext("beanJDBC.xml");
			
			JdbcClientesDao dao_c = (JdbcClientesDao)context.getBean("clientesDao");
			
			dao_c.incluirCliente(cliente);
			
			model.addAttribute("mensagem", "Usuario incluído com sucesso");
			return "index";
			
		} catch (Exception e) {
			e.printStackTrace();
			try {
			} catch (Exception e1) {
				e1.printStackTrace();
			}
			model.addAttribute("erro", "ERRO: " + e.getMessage());
			return "paginas/erro";
		}
	}
}
