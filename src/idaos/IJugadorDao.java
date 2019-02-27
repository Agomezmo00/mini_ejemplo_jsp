package idaos;


import java.util.List;

import models.Jugador;

public interface IJugadorDao {
	
	public boolean create(Jugador jugador);
	public List<Jugador>read();
	public boolean update(Jugador jugador);
	public boolean delete(Jugador jugador);
	
}
