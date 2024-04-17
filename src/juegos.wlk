object voley {
	var cantidadDeMinutos = 0
	method cantidadDeMinutos(minutos){
		cantidadDeMinutos = minutos
	}
	method energia() = -(2 * cantidadDeMinutos)
}

object futbol {
	var energia = -10
	method energia() = energia
	method energia(valor){
		energia = valor.abs() * -1
	}
}

object aerobic {
	var temperacturaActual = 18
	method temperacturaActual() = temperacturaActual
	method temperacturaActual(temperatura) {
		temperacturaActual = temperatura
	}
	method energia() = temperacturaActual * 0.5
}


object basquet {
	method energia() = 8
}