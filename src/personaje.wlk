import armas.*
import objetos.*
import enemigos.*
import wollok.game.*

object link {
	const property image = "sustituto-pj.jpeg"
	var property position = game.origin()
	var property corazones = 3
	var property puntos = 0
	var property arma = manos
	
	method recuperarVida(unCorazon){
		corazones += 1
		game.removeVisual(unCorazon)
	}
	
	method agarrar(joya){
		puntos += joya.puntos()
		game.removeVisual(joya)
	}
		
	method obtenerArma(nuevaArma){
		arma = nuevaArma
	}
	
	method poder() = arma.poder()
	
	method atacar(unEnemigo){
		unEnemigo.perderVida(self.poder())
	}
	
}
