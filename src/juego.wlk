import wollok.game.*
import personaje.*
import objetos.*
import enemigos.*
import armas.*


object juego {
	
	method aparecerJoya(){
		game.addVisual(
			new Joya(
				puntos = [1, 5, 25].anyOne(),
				position = randomizer.position()
			)
		)
	}
	
	method aparecerObjeto(unObjeto){
		game.addVisualIn(unObjeto, randomizer.position())
	}
	
	method aparecerEnemigo() {
		game.addVisual(new Enemigo(position = randomizer.position())
		)
	}
}

object randomizer {
	
	method position() = game.at(
		(0..game.width()-1).anyOne(),
		(0..game.width()-1).anyOne()
	)
}