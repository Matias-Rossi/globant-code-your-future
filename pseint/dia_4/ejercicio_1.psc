//Un hombre desea saber si su sueldo es mayor al sueldo mínimo, el programa le pedirá al
//usuario su sueldo actual y el sueldo mínimo. Si el sueldo es mayor al mínimo se debe
//mostrar un mensaje por pantalla indicándolo.

Algoritmo ejercicio_1
	//Definición
	Definir sueldoMinimo, sueldoActual Como Real
	Definir sueldoBajoMinimo Como Logico
	
	//Ingreso de datos
	Escribir "Ingrese el sueldo mínimo: "
	Leer sueldoMinimo
	Escribir "Ingrese su sueldo actual: "
	Leer sueldoActual
	
	//Procesamiento
	sueldoBajoMinimo = sueldoActual < sueldoMinimo
	
	//Salida
	Si sueldoBajoMinimo Entonces
		Escribir "Su sueldo está $" sueldoMinimo  - sueldoActual " por debajo del sueldo mínimo"
	SiNo
		Escribir "Su sueldo está por encima del mínimo"
		
	FinSi
	Si NO(sueldoBajoMinimo) Entonces 
		
	FinSi
	
	
FinAlgoritmo
