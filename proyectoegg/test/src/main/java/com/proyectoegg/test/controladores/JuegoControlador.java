package com.proyectoegg.test.controladores;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.proyectoegg.test.entidades.Pregunta;
import com.proyectoegg.test.entidades.Usuario;
import com.proyectoegg.test.errores.ErrorServicio;
import com.proyectoegg.test.servicios.PreguntaServicio;
import com.proyectoegg.test.servicios.UsuarioServicio;

@Controller
@RequestMapping("/juego")
public class JuegoControlador {

	@Autowired
	private UsuarioServicio usuarioServicio;
	@Autowired
	private PreguntaServicio preguntaServicio;

	@PreAuthorize("hasAnyRole('ROLE_USUARIO')")
	@GetMapping
	public String categorias() {
		return "categorias";
	}
	
	@PreAuthorize("hasAnyRole('ROLE_USUARIO')")
	@PostMapping("")
	public String elegirModo(ModelMap modelo, @RequestParam String modoDeJuego) {
		usuarioServicio.elegirModoDeJuego(modoDeJuego);
		return "categorias";
	}

	/*
	 * Reinicia al jugador y a las preguntas y comienza el juego.
	 */
	@PreAuthorize("hasAnyRole('ROLE_USUARIO')")
	@GetMapping("/empezar")
	public String primerPregunta(ModelMap modelo) {
		try {
			Usuario u = usuarioServicio.mostrarActivo();
			usuarioServicio.reiniciarUsuario(u.getId(), u.getAlias());
			preguntaServicio.reiniciarPreguntas();
			modelo.addAttribute("pregunta", preguntaServicio.mostrarPregunta());
			modelo.addAttribute("usuario", usuarioServicio.mostrarActivo());
			return "preguntas";
		} catch (ErrorServicio e) {
			// TODO revisar si es addAttribute o conviene usar put como en los videos de
			// nahue
			modelo.addAttribute("error", e.getMessage());
			return "redirect:/juego/terminado";
		}
	}

	/*
	 * Muestra la siguiente pregunta.
	 */
	@PreAuthorize("hasAnyRole('ROLE_USUARIO')")
	@GetMapping("/pregunta")
	public String mostrarPregunta(ModelMap modelo) {
		try {
			modelo.addAttribute("pregunta", preguntaServicio.mostrarPregunta());
			modelo.addAttribute("usuario", usuarioServicio.mostrarActivo());
			return "preguntas";
		} catch (ErrorServicio e) {
			modelo.addAttribute("error", e.getMessage());
			return "redirect:/juego/terminado";
		}
	}

	/*
	 * Comprueba si la respuesta del jugador es correcta o incorrecta.
	 */
	@PreAuthorize("hasAnyRole('ROLE_USUARIO')")
	@PostMapping("/pregunta")
	public String validarRespuesta(RedirectAttributes r, ModelMap modelo, @RequestParam Integer id,
			@RequestParam String respuestaElegida) throws ErrorServicio {
		Usuario u = usuarioServicio.mostrarActivo();
		Pregunta pregunta = preguntaServicio.findById(id);
		System.out.println("correcta:----------->" + id);
		System.out.println("seleccionada:----------->" + respuestaElegida);
		if (pregunta.getRespuestaCorrecta().equals(respuestaElegida)) {
			r.addFlashAttribute("correcto", "Respuesta Correcta!");
			usuarioServicio.sumaPunto(u.getId(), u.getAlias());
		} else if (!pregunta.getRespuestaCorrecta().equals(respuestaElegida) && u.getVidas() == 1) {
			usuarioServicio.pierdeVida(u.getId(), u.getAlias());
			return "redirect:/juego/terminado";
		} else {
			r.addFlashAttribute("incorrecto", "Respuesta Incorrecta!");
			usuarioServicio.pierdeVida(u.getId(), u.getAlias());
		}
		return "redirect:/juego/pregunta";
	}

	/*
	 * Muestra la vista del juego terminado y el puntaje del jugador.
	 */
	@PreAuthorize("hasAnyRole('ROLE_USUARIO')")
	@GetMapping("/terminado")
	public String juegoTerminado(ModelMap modelo) throws ErrorServicio {
		Usuario u = usuarioServicio.mostrarActivo();
		usuarioServicio.guardarPuntajeMaximo(u.getId(), u.getAlias());
		modelo.addAttribute("usuario", u);
		return "game-over";
	}
	
	//TODO descomentar todos los permisos y rehabilitarlos

}
