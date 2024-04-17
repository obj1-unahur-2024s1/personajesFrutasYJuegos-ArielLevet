import frutas.*
import juegos.*

object martin {
	var energia = 80
	var cantidadActividades = 0
	var tieneHambre = false
	var enLaDespensa = agua
	
	method estaFeliz() = energia > 80 || (cantidadActividades >= 2 && !tieneHambre)

	method comprar(unaFruta) {
		enLaDespensa = unaFruta
	}
	
	method enLaDespensa() = enLaDespensa
	method energia() = energia
	method tieneHambre() = tieneHambre
	method cantidadActividades() = cantidadActividades
	
	method alimentarse(){
		energia = energia + enLaDespensa.energia()
		tieneHambre = !enLaDespensa.calmaElHambre()
		enLaDespensa = agua
		
	}
	
	method hacerDeporte(unDeporte) {
		energia = 0.max(energia + unDeporte.energia())
		cantidadActividades = cantidadActividades + 1
	}
	
	method dormir() {
		energia = energia * 1.5
		enLaDespensa.efectoCambioDia()
	}
}