import armas.*
import objetos.*
import enemigos.*
import wollok.game.*

object link {
	const property image = "sustituto-pj.jpeg"
	var property position = game.origin()
	var property vidas = 3
	var property puntos = 0
	var property armas = #{}
	
	method atacar(objetivo){}
	method agarrar(objeto){}
	
}
