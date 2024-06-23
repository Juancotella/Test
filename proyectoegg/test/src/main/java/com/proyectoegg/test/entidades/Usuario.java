package com.proyectoegg.test.entidades;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import com.proyectoegg.test.enums.Role;

@Entity
public class Usuario {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String alias;
	private String password;
	private Integer puntaje;
	private Integer puntajeMaximo;
	private Integer vidas;
	private String modoDeJuego;
	@Enumerated(EnumType.STRING)
	private Role rol;

	public Usuario() {
		this.puntaje = 0;
		this.puntajeMaximo = 0;
		this.vidas = 3;
	}

	public Role getRol() {
		return rol;
	}

	public void setRol(Role rol) {
		this.rol = rol;
	}

	public Usuario(String alias, String password) {
		super();
		this.alias = alias;
		this.password = password;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public String getAlias() {
		return alias;
	}

	public void setAlias(String alias) {
		this.alias = alias;
	}

	public Integer getPuntaje() {
		return puntaje;
	}

	public void setPuntaje(Integer puntaje) {
		this.puntaje = puntaje;
	}

	public Integer getPuntajeMaximo() {
		return puntajeMaximo;
	}

	public void setPuntajeMaximo(Integer puntajeMaximo) {
		this.puntajeMaximo = puntajeMaximo;
	}

	public Integer getVidas() {
		return vidas;
	}

	public void setVidas(Integer vidas) {
		this.vidas = vidas;
	}

	public String getModoDeJuego() {
		return modoDeJuego;
	}

	public void setModoDeJuego(String modoDeJuego) {
		this.modoDeJuego = modoDeJuego;
	}

}
