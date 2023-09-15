
object reg {
	const registro = []
	
	method agregarAbatidosDia(cantidad, dia) {
		if (self.yaEstaElDia(dia)){
			self.error('Ya existe el dia.')
		}
		registro.add([cantidad, dia])
	}

	method agregarAbatidosVariosDias(registrosAbatidos) { // [ [80,20230910], [100,20230911] ]
		if (registrosAbatidos.forEach({dia => self.yaEstaElDia(dia)})) {
			self.error('El dia ya esta en la lista')
		}
		registro.addAll(registrosAbatidos)
	}
	
	method dia(reg) = reg.last()
	
	method cant(reg) = reg.first()
	
	method yaEstaElDia(dia) = registro.any({ r => self.dia(r) == dia})
	
	method registroDia(dia) = registro.find({r => self.dia(r) == dia})
	
	method eliminarElRegistroDelDia(dia) {
		if (not self.yaEstaElDia(dia) ) {
			self.error('El dia no esta en la lista')
		} else {
			registro.remove(self.registroDia(dia))
		}
	}
	
	method eliminarVariosRegistrosDeDias(listaDeDias) {
		if (listaDeDias.all{e => self.yaEstaElDia(e)}) {
			self.error('Algun dia de la lista no esta incluido en el registro.')
		}
		listaDeDias.forEach({dia => self.eliminarElRegistroDelDia(dia)})
			
	}
	
	method cantidadDeDiasRegistrados() = registro.size()
	
	method estaVacioElRegistro() = registro.isEmpty()
	
	method algunDiaAbatio(cantidad) = registro.any({r => self.cant(r) == cantidad})
	
	method primerValorDeAbatidos() = self.cant(registro.first())
	
	method ultimoValorDeAbatidos() = self.cant(registro.last())
	
	method maximoValorDeAbatidos() = registro.max({r => self.cant(r)}).first()
	
	method totalAbatidos() = registro.sum({r => self.cant(r)})
	
	method cantidadDeAbatidosElDia(dia) = self.cant(self.registroDia(dia))
	
	method ultimoValorDeAbatidosConSize() = self.cant(registro.get(registro.size()-1))
	
	method diasConAbatidosSuperioresA(cuanto) = 
	
	method valoresDeAbatidosPares() = 
	
	method elValorDeAbatidos(cantidad) = 
	
	method abatidosSumando(cantidad) =  
	
	method abatidosEsAcotada(n1,n2) = 
	
	method algunDiaAbatioMasDe(cantidad) =
	
	method todosLosDiasAbatioMasDe(cantidad) = 
	
	method cantidadAbatidosMayorALaPrimera() = 
	
	method esCrack() = (1..registro.size()-1).all({i => self.cant(registro.get(i) > self.cant(registro.get(i-1)})))
	
	
}





