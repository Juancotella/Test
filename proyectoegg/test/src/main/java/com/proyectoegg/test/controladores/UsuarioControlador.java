package com.proyectoegg.test.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.proyectoegg.test.entidades.Usuario;
import com.proyectoegg.test.errores.ErrorServicio;
import com.proyectoegg.test.servicios.UsuarioServicio;

@Controller
@RequestMapping("/inicio")
public class UsuarioControlador {

	@Autowired
	private UsuarioServicio usuarioServicio;

	@GetMapping("/")
	public String inicio() {
		return "login";
	}

	@PostMapping("/ingresar")
	public String ingresar(ModelMap modelo, @RequestParam String alias, @RequestParam String password,
			@RequestParam String password2) {
		try {
			usuarioServicio.cargarUsuario(alias, password, password2);
			return "redirect:/juego/empezar";
		} catch (ErrorServicio e) {
			modelo.addAttribute("error", e.getMessage());
			return "login";
		}
	}

	@GetMapping("/ranking")
	public String mostrarRanking(ModelMap modelo) {
		List<Usuario> usuarios = usuarioServicio.mostrarRanking();
		modelo.addAttribute("usuarios", usuarios);
		return "ranking";
	}

}
