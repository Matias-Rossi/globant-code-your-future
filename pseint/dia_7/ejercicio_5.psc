//	Escriba un programa que solicite dos números enteros (mínimo y máximo). A
//	continuación, se debe pedir al usuario que ingrese números enteros situados entre el
//	máximo y mínimo. Cada vez que un número se encuentre entre ese intervalo, se sumara
//	uno a una variable. El programa terminará cuando se escriba un número que no
//	pertenezca a ese intervalo, y al finalizar se debe mostrar por pantalla la cantidad de
//	números ingresados dentro del intervalo.

Algoritmo ejercicio_5
	// Definición e inicialización de variables
	Definir minimo, maximo, contadorDentroLimite Como Entero
	Definir numIngresado Como Real
	Definir numIngresadoDentroLimite Como Logico
	
	numIngresadoDentroLimite = Verdadero
	contadorDentroLimite = 0
	
	
	// Ingreso de datos iniciales
	Escribir "Ingrese un límite inferior entero para el intervalo: "
	Leer minimo
	
	Escribir "Ingrese un límite superior entero para el intervalo: "
	Leer maximo
	
	
	// Ingreso de otros datos y validación de intervalo
	Escribir "Ingrese un número: "
	Leer numIngresado
	numIngresadoDentroLimite = minimo < numIngresado Y numIngresado < maximo
	
	Mientras numIngresadoDentroLimite Hacer
		contadorDentroLimite = contadorDentroLimite + 1
		
		Escribir "Ingrese un número: "
		Leer numIngresado
		
		numIngresadoDentroLimite = minimo < numIngresado Y numIngresado < maximo
	FinMientras
	
	
	// Salida
	Escribir "La cantidad de valores dentro del intervalo (", minimo, ", ", maximo, ") es: ", contadorDentroLimite
	
FinAlgoritmo
