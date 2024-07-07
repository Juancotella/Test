package com.proyectoegg.test.repositorios;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.proyectoegg.test.entidades.Usuario;

@Repository
public interface UsuarioRepositorio extends JpaRepository<Usuario, Integer> {

	@Query("SELECT u FROM Usuario u WHERE u.alias LIKE :alias")
	public Usuario buscarPorAlias(@Param("alias") String alias);

	@Query("SELECT u FROM Usuario u ORDER BY u.puntajeMaximo DESC")
	public List<Usuario> mostrarRanking();
	
	
	//Modificar para que traiga el usuario de acuerdo al alias y no al ultimo creado
	@Query("SELECT u FROM Usuario u WHERE u.id = (SELECT MAX(u.id) FROM Usuario u)")
	public Usuario mostrarActivo();

}
