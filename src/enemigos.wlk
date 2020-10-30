import personaje.*
import wollok.game.*
import objetos.*

class Enemigo {
	var property position = game.center()
	var property vidas = 2
	
	method atacar(personaje){
		personaje.vidas()
	}
	
	method perderVida(cantidad){
		vidas -= cantidad
		
		if(vidas == 0){
			game.addVisualIn(corazon, self.position())
		}
	}
	
}
