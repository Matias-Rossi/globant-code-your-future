//	Escriba un programa que solicite dos n�meros enteros (m�nimo y m�ximo). A
//	continuaci�n, se debe pedir al usuario que ingrese n�meros enteros situados entre el
//	m�ximo y m�nimo. Cada vez que un n�mero se encuentre entre ese intervalo, se sumara
//	uno a una variable. El programa terminar� cuando se escriba un n�mero que no
//	pertenezca a ese intervalo, y al finalizar se debe mostrar por pantalla la cantidad de
//	n�meros ingresados dentro del intervalo.

Algoritmo ejercicio_5
	// Definici�n e inicializaci�n de variables
	Definir minimo, maximo, contadorDentroLimite Como Entero
	Definir numIngresado Como Real
	Definir numIngresadoDentroLimite Como Logico
	
	numIngresadoDentroLimite = Verdadero
	contadorDentroLimite = 0
	
	
	// Ingreso de datos iniciales
	Escribir "Ingrese un l�mite inferior entero para el intervalo: "
	Leer minimo
	
	Escribir "Ingrese un l�mite superior entero para el intervalo: "
	Leer maximo
	
	
	// Ingreso de otros datos y validaci�n de intervalo
	Escribir "Ingrese un n�mero: "
	Leer numIngresado
	numIngresadoDentroLimite = minimo < numIngresado Y numIngresado < maximo
	
	Mientras numIngresadoDentroLimite Hacer
		contadorDentroLimite = contadorDentroLimite + 1
		
		Escribir "Ingrese un n�mero: "
		Leer numIngresado
		
		numIngresadoDentroLimite = minimo < numIngresado Y numIngresado < maximo
	FinMientras
	
	
	// Salida
	Escribir "La cantidad de valores dentro del intervalo (", minimo, ", ", maximo, ") es: ", contadorDentroLimite
	
FinAlgoritmo
