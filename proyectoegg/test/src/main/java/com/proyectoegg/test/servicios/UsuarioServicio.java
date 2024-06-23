package com.proyectoegg.test.servicios;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.proyectoegg.test.entidades.Usuario;
import com.proyectoegg.test.enums.Role;
import com.proyectoegg.test.errores.ErrorServicio;
import com.proyectoegg.test.repositorios.UsuarioRepositorio;

@Service
public class UsuarioServicio implements UserDetailsService {

	private static final Integer PUNTO = 1;
	@Autowired
	private UsuarioRepositorio usuarioRepositorio;

	/*
	 * Registra un usuario nuevo en la base de datos.
	 */
	@Transactional
	public void cargarUsuario(String alias, String pw1, String pw2) throws ErrorServicio {
		validar(alias, pw1, pw2);
		if (usuarioRepositorio.buscarPorAlias(alias) == null) {
			BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
			Usuario usuario = new Usuario();
			usuario.setAlias(alias);
			usuario.setPassword(encoder.encode(pw1));
			usuario.setRol(Role.USUARIO);
			usuarioRepositorio.save(usuario);
		} else {
			throw new ErrorServicio("El alias ya existe o es inválido.");
		}
	}

	private void validar(String alias, String pw1, String pw2) throws ErrorServicio {
		if (alias == null || alias.isEmpty() || alias.length() < 3)
			throw new ErrorServicio("Alias inválido.");
		if (pw1 == null || pw1.isEmpty() || pw2 == null || pw2.isEmpty())
			throw new ErrorServicio("La contraseña no puede estar vacía.");
		if (!pw1.equals(pw2))
			throw new ErrorServicio("Las contraseñas deben ser iguales");
	}

	/*
	 * Setea la categoría de preguntas que serán mostradas.
	 */
	@Transactional
	public void elegirModoDeJuego(String modoDeJuego) {
		Usuario usuario = mostrarActivo();
		usuario.setModoDeJuego(modoDeJuego);
		usuarioRepositorio.save(usuario);
	}

	/*
	 * Comprueba si el jugador rompió su record de puntaje y reinicia vidas y puntaje.
	 */
	@Transactional
	public void reiniciarUsuario(Integer id, String alias) throws ErrorServicio {
		Optional<Usuario> respuesta = usuarioRepositorio.findById(id);
		if (respuesta.isPresent()) {
			Usuario usuario = respuesta.get();
			usuario.setVidas(3);
			usuario.setModoDeJuego(null);
			if (usuario.getPuntajeMaximo() < usuario.getPuntaje()) {
				usuario.setPuntajeMaximo(usuario.getPuntaje());
			}
			usuario.setPuntaje(0);
			usuarioRepositorio.save(usuario);
		} else {
			throw new ErrorServicio("No se encontró el usuario solicitado");
		}
	}
	
	@Transactional
	public void guardarPuntajeMaximo(Integer id, String alias) throws ErrorServicio {
		Optional<Usuario> respuesta = usuarioRepositorio.findById(id);
		if (respuesta.isPresent()) {
			Usuario usuario = respuesta.get();
			if (usuario.getPuntajeMaximo() < usuario.getPuntaje()) {
				usuario.setPuntajeMaximo(usuario.getPuntaje());
			}
			usuarioRepositorio.save(usuario);
		} else {
			throw new ErrorServicio("No se encontró el usuario solicitado");
		}
	}


	/*
	 * Descuenta una vida al jugador.
	 */
	@Transactional
	public void pierdeVida(Integer id, String alias) throws ErrorServicio {
		Optional<Usuario> respuesta = usuarioRepositorio.findById(id);
		if (respuesta.isPresent()) {
			Usuario usuario = respuesta.get();
			usuario.setVidas(usuario.getVidas() - 1);
			usuarioRepositorio.save(usuario);
		} else {
			throw new ErrorServicio("No se encontró el usuario solicitado");
		}
	}

	/*
	 * Suma el puntaje al jugador.
	 */
	@Transactional
	public void sumaPunto(Integer id, String alias) throws ErrorServicio {
		Optional<Usuario> respuesta = usuarioRepositorio.findById(id);
		if (respuesta.isPresent()) {
			Usuario usuario = respuesta.get();
			usuario.setPuntaje(usuario.getPuntaje() + PUNTO);
			usuarioRepositorio.save(usuario);
		} else {
			throw new ErrorServicio("No se encontró el usuario solicitado");
		}
	}

	/*
	 * Muestra el ranking de puntajes maximos.
	 */
	@Transactional(readOnly = true)
	public List<Usuario> mostrarRanking() {
		return usuarioRepositorio.mostrarRanking();
	}

	/*
	 * Trae el jugador activo.
	 */
	public Usuario mostrarActivo() {
		return usuarioRepositorio.mostrarActivo();
	}

	/*
	 * Metodo que llama WebSecurity cuando un usuario intenta logearse
	 */
	@Override
	public UserDetails loadUserByUsername(String alias) throws UsernameNotFoundException {
		try {
			Usuario usuario = usuarioRepositorio.buscarPorAlias(alias);
			List<GrantedAuthority> permisos = new ArrayList<>();
			permisos.add(new SimpleGrantedAuthority("ROLE_" + usuario.getRol()));
			
			ServletRequestAttributes attr = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
			HttpSession session = attr.getRequest().getSession(true);
			session.setAttribute("usuariosession", usuario);
			
			User user = new User(usuario.getAlias(), usuario.getPassword(), permisos);
			return user;
		} catch (Exception e) {
			throw new UsernameNotFoundException("El usuario solicitado no existe");
		}
	}
}
