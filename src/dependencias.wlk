import Rodados.*
import pedidos.*

class Dependencia {
	var nombre
	var cantidadDeEmpleados
	const flota = []
	const pedidos = []
	
	/*Parte de la flota */
	
	method cantidadDeEmpleados() = cantidadDeEmpleados
	method nombre() = nombre 
	method agregarAFlota(rodado){
		flota.add(rodado)
	}
	method quitarDeFlota(rodado){
		flota.remove(rodado)
	}
	method pesoTotalFlota() = flota.sum({rodado => rodado.peso()})
	method estaBienEquipada() = flota.size() >= 3 and flota.all({rodado => rodado.velocidadMaxima() >= 100})
	method capacidadTotalEnColor(color){
		const flotaColorDeLosRodados = flota.filter({rodado => rodado.color() == color})
		return flotaColorDeLosRodados.sum({rodado => rodado.capacidad()})
	}
	method colorDelRodadoMasRapido() = flota.max({rodado => rodado.velocidadMaxima()}).color()
	method capacidadFaltante() = 0.max(cantidadDeEmpleados - flota.sum({rodado => rodado.capacidad()}))
	method esGrande() = cantidadDeEmpleados >= 40 and flota.size() >= 5
	
	/*Parte de los pedidos */
	
	method pedidos() = pedidos
	method agregarPedido(unPedido){
		pedidos.add(unPedido)
	}
	method quitarPedido(unPedido){
		pedidos.remove(unPedido)
	}
	method totalDePasajerosEnPedidosRegistrados() = pedidos.sum({pedido => pedido.cantidadDePasajeros()})
	method noPuedeSerSatisfechoPorNingunAuto() = 
			pedidos.filter({pedido => flota.all({auto => !pedido.puedeSatisfacer(auto)})})
	method colorIncompatibleParaTodosLosPedidos(color) =
			pedidos.all({pedido => pedido.coloresIncompatibles().contains(color)})
	method relajarTodosLosPedidos(){
		pedidos.forEach({pedido => pedido.relajar()})
	}
}

