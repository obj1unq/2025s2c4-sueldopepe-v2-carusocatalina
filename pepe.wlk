object pepe {
	object pepe {
    var property category = cadete // colaborador interno
    var property bonoResultados = bonoPorcentaje
    var property bonoPresentismo = normal
    var property faltas = 0

    method sueldo() = self.neto() + self.bonoResultados().bono(self) + self.bonoPresentismo().bono(self)

    method neto() = category.neto()
    
}
object gerente {
    method neto() = 15000
}

object cadete {
    method neto() = 20000
}


object bonoPorcentaje { 
    method bono(empleado) = empleado.neto() * 0.1
}

object montoFijo {
    method bono(empleado) = 800
}
object nulo { // tanto para resultados como presentismo
    method bono(empleado) = 0
}


object normal {
    method bono(empleado) {
        return if (empleado.faltas() == 0){
             2000
        }
        else {
            if (empleado.faltas() == 1) {
                1000
            }
            else {
                0
            }
        }
    }
}
object ajuste {
    method bono(empleado) {
        return if (empleado.faltas() == 0){
             100
        }
        else {
            0
        }
    }
}
object demagogico {
    method bono(empleado){
        return if (empleado.neto()<18000){
            500
        }
        else {
            300
        }
    }
}
