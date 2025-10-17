class Corsa {
    const color
    method capacidad() = 4
    method velocidadMaxima() = 150
    method peso() = 1300
    method color() = color
}
class Kwid {
    var tieneTanqueAdicional
    method tieneTanqueAdicional() = tieneTanqueAdicional
    method capacidad() = if(tieneTanqueAdicional) 4 else 3
    method velocidadMaxima() = if(tieneTanqueAdicional) 120 else 110
    method peso() = 120 + if(tieneTanqueAdicional) 150 else 0
    method color() = "azul"
}

object trafic {
    var interior = interiorComodo
    var motor = motorBataton
    method interior() = interior
    method motor() = motor
    method capacidad() = interior.capacidad()
    method velocidadMaxima() = motor.velocidadMaxima()
    method peso() = 4000 + motor.peso() + interior.peso()
    method color() = "blanco"

    method cambiarInterior(unInterior) {interior = unInterior}
    method cambiarMotor(unMotor) {motor = unMotor}
}
// interior
object interiorComodo {
    method capacidad() = 5
    method peso() = 700
}
object interiorPopular {
    method capacidad() = 12
    method peso() = 1000
}
//

// motor
object motorPulenta {
    method velocidadMaxima() = 130
    method peso() = 800
}
object motorBataton {
    method velocidadMaxima() = 80
    method peso() = 500
}
//
class AutosEspeciales {
    const capacidad
    const velocidadMaxima
    const peso
    const color
}