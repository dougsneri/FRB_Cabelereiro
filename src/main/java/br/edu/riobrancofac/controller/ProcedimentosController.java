package br.edu.riobrancofac.controller;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.edu.riobrancofac.dal.JdbcProcedimentosDao;
import br.edu.riobrancofac.entidades.Procedimento;

@Controller
public class ProcedimentosController {

	@RequestMapping(value = "/cadastroProcedimento")
	public String incluirProcedimento(ModelMap model) {
		try {
			ApplicationContext context = new ClassPathXmlApplicationContext("beanJDBC.xml");
			JdbcProcedimentosDao dao_p = (JdbcProcedimentosDao)context.getBean("procedimentosDao");
			return "paginas/incluirProcedimento";
			
			
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("erro", "ERRO: " + e.getMessage());
			return "paginas/erro";
		}
	}
	
	@RequestMapping(value = "/cadprocedimento", method=RequestMethod.POST)
	public String incluirProcedimento(Procedimento procedimento, ModelMap model) {
		try {
			ApplicationContext context = new ClassPathXmlApplicationContext("beanJDBC.xml");
			
			JdbcProcedimentosDao dao_p = (JdbcProcedimentosDao)context.getBean("procedimentosDao");
			
			dao_p.incluirProcedimento(procedimento);
			model.addAttribute("mensagem", "Procedimento incluído com sucesso");
			
			return "index";
			
		} catch (Exception e) {
			e.printStackTrace();
			model.addAttribute("erro", "ERRO: " + e.getMessage());
			return "paginas/erro";
		}
	}
}
