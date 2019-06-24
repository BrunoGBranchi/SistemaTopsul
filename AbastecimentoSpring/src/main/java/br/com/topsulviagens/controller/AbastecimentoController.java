package br.com.topsulviagens.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import br.com.topsulviagens.dao.AbastecimentoDAO;
import br.com.topsulviagens.model.Abastecimento;

@Controller
@RequestMapping("/abastecimento")
public class AbastecimentoController {

	@Autowired
	private AbastecimentoDAO abastecimentoDao;

	
	@RequestMapping(path= {"/cadastro", "/", ""})
	public String cadastro() {
		return "abastecimento/cadastro";
	}
	
	@RequestMapping(path= {"/mostrar"})
	public String mostrar(Model model) {
		model.addAttribute("abastecimentos", abastecimentoDao.findAll());
		return "abastecimento/mostrar";
	}
	
	@RequestMapping(path = "/enviar", method = RequestMethod.POST)
	public String salvar(Abastecimento abastecimento, Model model) {
		abastecimentoDao.saveAndFlush(abastecimento);
		model.addAttribute("abastecimentos", abastecimentoDao.findAll());
		model.addAttribute("alerta","Abastecimento cadastrado com sucesso!");
		return "abastecimento/cadastro";
	}

	
	@RequestMapping(path = "/excluir/{codigo}")
	public String excluir(@PathVariable(value = "codigo") Long codigo) {
		abastecimentoDao.deleteById(codigo);
		return "redirect:/abastecimento/mostrar";
	}
	
	@RequestMapping(path = "/loginadm", method = RequestMethod.POST)
	public String loginadm(Abastecimento abastecimento, Model model) {
		model.addAttribute("camposenha","1");
		return "abastecimento/cadastro";
	}
	
	public boolean validador(String pass) {
		 if(pass.equals("14974403")) {
		    return true;
		 }else {
			return false;
		 }
	 }
	
	@RequestMapping(path = "/registros", method = RequestMethod.POST)
	public String registros(String senha, Model model) {
		if(validador(senha)) {
			return "redirect:/abastecimento/mostrar";
		}else {
			model.addAttribute("alerta2","Senha incorreta, Tente novamente!");
			return "abastecimento/cadastro";
		}
	}
}
