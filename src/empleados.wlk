//Escribir aqui los objetos

// Empleados

object galvan{
	var sueldoACobrar = 15000	
	
	method Sueldo(){
		return sueldoACobrar	
	}
	
	method nuevoSueldo(salario){
		sueldoACobrar = salario
	}
}

object baigorria{
	var empanadasVendidas = 0
	
	method Sueldo(){
		return empanadasVendidas * 15				
	}
	
	method empanadasVendidas(qEmpanadas){
		empanadasVendidas = qEmpanadas
	}	
}

// Dueño

object gimenez{
	var fondoSueldos = 300000
	
	method pagarSueldos(empleado){
		fondoSueldos -= empleado.Sueldo()
		
	}
	
}
