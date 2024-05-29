object blanco {}
object rojo {}
object azul {}
object beige {}
object negro {}
object verde {}

class ChevroletCorsa{
	var color 
	method capacidad() = 4
	method velocidadMaxima() = 150
	method peso() = 1300
	method color() = color
	method nuevoColor(nuevoColor){
		color = nuevoColor
	}
}

class RenaultKwid{
	const tanqueAdicional = true
	method capacidad() = if (! tanqueAdicional) 4 else 3
	method velocidadMaxima() = if (tanqueAdicional) 120 else 110
	method peso() = if (tanqueAdicional) 1350 else 1200
	method color() = azul
}
 
/*
 object tanqueAdicional{
 	method capacidad() = 1
	method velocidadMaxima() = 10
	method peso() = 150
 }
 
 object tanqueVacio{
 	method capacidad() = 0
	method velocidadMaxima() = 0
	method peso() = 0
 }
 
class RenaultKwid{
	var tanque = tanqueAdicional
	
	method cambiarTanque(unTanque){
		tanque = unTanque
	}
	method capacidad() = 4 - tanque.capacidad()
	method velocidadMaxima() = 110 + tanque.velocidadMaxima()
	method peso() = 1200 + tanque.peso()
	method color() = azul
}
 */
 

object trafic{
	var interiorComodo = true
	var motorPulenta = false
	
	method colocarInteriorComodo() {
		interiorComodo = true
	}
	method colocarInteriorPopular() {
		interiorComodo = false
	}
	method colocarMotorPulenta(){
		motorPulenta = true
	}
	method colocarMotorBaraton(){
		motorPulenta = false
	}
	method pesoInterior() = if (interiorComodo) 700 else 1000
	method pesoMotor() = if (motorPulenta) 800 else 500
	method capacidad() = if (interiorComodo) 5 else 12
	method velocidadMaxima() = if (motorPulenta) 130 else 80
	method peso() = 4000 + self.pesoInterior() + self.pesoMotor()
	method color() = blanco
}

class AutoEspecial {
	var capacidad 
	var velocidadMaxima
	var color
	var peso 
	
	method capacidad() = capacidad
	method nuevaCapacidad(nuevaCapacidad){
		capacidad = nuevaCapacidad
	} 
	method velocidadMaxima() = velocidadMaxima
	method nuevaVelocidadMaxima(nuevaVelocidadMaxima){
		velocidadMaxima = nuevaVelocidadMaxima
	} 
	method color() = color
	method nuevoColor(nuevoColor){
		color = nuevoColor
	} 
	method peso() = peso
	method nuevoPeso(nuevoPeso){
		peso = nuevoPeso
	} 
}

