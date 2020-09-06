//Escribir aqui los objetos

// Empleados

object galvan{
	var sueldoACobrar = 15000	
	var deuda = 0
	var dinero = 0
	
	
	method deuda(){
		return deuda
	}
	
	method dinero(){
		return dinero
	}
	
	method sueldoACobrar(){
		return sueldoACobrar	
	}
	
	method sueldo(){
		self.pagarDeudas(sueldoACobrar)
		return sueldoACobrar						
	}
	
	method pagarDeudas(monto){
		dinero = 0.max(dinero + monto - deuda)
		deuda = 0.max(deuda - monto)
	}
	
	method nuevoSueldo(salario){
		sueldoACobrar = salario
	}
	
	method gastar(cuanto){
		deuda = 0.max(deuda + cuanto - dinero)
		dinero = 0.max(dinero - cuanto)
	}
	
}

object baigorria{
	var empanadasVendidas = 0
	var salarioAcumulado = 0
	var sueldoACobrar = 0
	
	method sueldo(){
		sueldoACobrar = empanadasVendidas * 15
		salarioAcumulado += sueldoACobrar
		empanadasVendidas = 0	
		return sueldoACobrar				
	}

	method totalCobrado(){
		return salarioAcumulado
	}
	
	method empanadasVendidas(qEmpanadas){
		empanadasVendidas += qEmpanadas
	}
		
}

// Dueño

object gimenez{
	var fondoSueldos = 300000
	
	method pagarSueldo(empleado){
		fondoSueldos -= empleado.sueldo()
		
	}
	
	method fondoSueldos(){
		return fondoSueldos
		
	}
}
