package com.proyectoegg.test.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.proyectoegg.test.errores.ErrorServicio;
import com.proyectoegg.test.servicios.UsuarioServicio;

@Controller
@RequestMapping("/registro")
public class RegistroControlador {

	@Autowired
	private UsuarioServicio usuarioServicio;
	
	@GetMapping("")
	public String registro() {
		return "registro";
	}
	
	@PostMapping("")
	public String guardarRegistro(Model model, @RequestParam String alias, String password, String password2) {
		try {
			usuarioServicio.cargarUsuario(alias, password, password2);
			return "redirect:/login";
		} catch (ErrorServicio e) {
			model.addAttribute("error", e.getMessage());
			return "registro";
		}
	}
}
