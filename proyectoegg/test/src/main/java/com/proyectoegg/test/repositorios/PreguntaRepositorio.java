package com.proyectoegg.test.repositorios;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.proyectoegg.test.entidades.Pregunta;

@Repository
public interface PreguntaRepositorio extends JpaRepository<Pregunta, Integer> {

	@Query("SELECT p FROM Pregunta p WHERE p.usada = false")
	public List<Pregunta> preguntasDisponibles();

	@Query("SELECT p FROM Pregunta p WHERE p.usada = false AND p.categoria IN('JAVA', 'POO', 'Excepciones', 'COLECCIONES', 'HERENCIA', 'Relaciones')")
	public List<Pregunta> preguntasJavaDisponibles();
	
	@Query("SELECT p FROM Pregunta p WHERE p.usada = false AND p.categoria IN('JDBC', 'MySql','JPA')")
	public List<Pregunta> preguntasDBDisponibles();
	
	@Query("SELECT p FROM Pregunta p WHERE p.usada = false AND p.categoria IN('HTML Y CSS', 'Programacion Web')")
	public List<Pregunta> preguntasWebDisponibles();

}
