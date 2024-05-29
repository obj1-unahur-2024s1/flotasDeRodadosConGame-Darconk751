import dependencias.*
import Rodados.*

class Pedido {
	var distanciaARecorrer
	var tiempoMaximo
	var cantidadDePasajeros
	var coloresIncompatibles
	
	method distanciaARecorrer() = distanciaARecorrer
	method tiempoMaximo() = tiempoMaximo
	method cantidadDePasajeros() = cantidadDePasajeros
	method coloresIncompatibles() = coloresIncompatibles
	method velocidadRequerida() = self.distanciaARecorrer() / self.tiempoMaximo()
	method acelerar(){
		tiempoMaximo = tiempoMaximo - 1
	}
	method relajar(){
		tiempoMaximo = tiempoMaximo + 1
	}
	method puedeSatisfacer(auto) = self.velocidadRequerida() <= auto.velocidadMaxima() - 10 and 
	       auto.capacidad() >= cantidadDePasajeros and ! self.coloresIncompatibles().contains(auto.color())
}
