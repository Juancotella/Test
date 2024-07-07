package com.proyectoegg.test.servicios;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.proyectoegg.test.entidades.Pregunta;
import com.proyectoegg.test.entidades.Usuario;
import com.proyectoegg.test.errores.ErrorServicio;
import com.proyectoegg.test.repositorios.PreguntaRepositorio;

@Service
public class PreguntaServicio {

	@Autowired
	private PreguntaRepositorio preguntaRepositorio;

	@Autowired
	private UsuarioServicio usuarioServicio;

	@Transactional(readOnly = true)
	private Pregunta elegirPregunta() throws ErrorServicio {
		List<Pregunta> preguntas;
		Usuario usuario = usuarioServicio.mostrarActivo();
		// TODO sacar el check de null.
		if (usuario.getModoDeJuego() == null)
			preguntas = preguntaRepositorio.preguntasDisponibles();
		else if (usuario.getModoDeJuego().equals("WEB"))
			preguntas = preguntaRepositorio.preguntasWebDisponibles();
		else if (usuario.getModoDeJuego().equals("JAVA"))
			preguntas = preguntaRepositorio.preguntasJavaDisponibles();
		else if (usuario.getModoDeJuego().equals("DB"))
			preguntas = preguntaRepositorio.preguntasDBDisponibles();
		else
			preguntas = preguntaRepositorio.preguntasDisponibles();
		if (preguntas.isEmpty() || preguntas.size() == 0 || preguntas == null) {
			throw new ErrorServicio("No hay mas preguntas");
		}
		Collections.shuffle(preguntas);

		return preguntas.get(0);
	}

	
	/*
	 * Mostar pregunta
	 */
	@Transactional
	public Pregunta mostrarPregunta() throws ErrorServicio {
		Pregunta pregunta = elegirPregunta();
		pregunta.setUsada(true);
		return pregunta;
	}

	public boolean validarRespuesta(String respuestaCorrecta, String respuestaElegida) {
		return respuestaCorrecta.equals(respuestaElegida);
	}

	
	@Transactional
	public void reiniciarPreguntas() {
		List<Pregunta> preguntas = preguntaRepositorio.findAll();
		for (Pregunta pregunta : preguntas) {
			pregunta.setUsada(false);
			preguntaRepositorio.save(pregunta);
		}
	}

	public Pregunta findById(Integer id) throws ErrorServicio {
		Optional<Pregunta> respuesta = preguntaRepositorio.findById(id);
		if (respuesta.isPresent()) {
			Pregunta pregunta = respuesta.get();
			return pregunta;
		} else {
			throw new ErrorServicio("No se encontró la pregunta solicitado");
		}
	}

}
