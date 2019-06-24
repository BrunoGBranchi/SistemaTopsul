package br.com.topsulviagens.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/login")
public class LoginController {
		
	@RequestMapping(path= {"/entrar" , "/", ""})
	public String entrar() {
		return "login/entrar";
	}
	
	@RequestMapping(path = "/verificar", method = RequestMethod.POST)
	public String menu(Model model, String senha) throws IOException {
		if(validador(senha)) {
			return "redirect:/abastecimento/cadastro";
		}else {
			model.addAttribute("alerta","Senha incorreta, Tente novamente!");
			return "login/entrar";
		}
	}
	
	@RequestMapping(path = "/menu", method = RequestMethod.POST)
	public String menu() {
		return "login/menu";
	}
	 
	 public boolean validador(String pass) {
		 if(pass.equals("123456")) {
		    return true;
		 }else {
			return false;
		 }
	 }
}
