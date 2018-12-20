package br.edu.riobrancofac.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class PortifolioController {
	
	@RequestMapping("/portifolio")
	public String portifolio(ModelMap model) {
		
		return "paginas/portifolio";
	}
}
