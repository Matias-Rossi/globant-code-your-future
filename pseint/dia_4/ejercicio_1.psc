//Un hombre desea saber si su sueldo es mayor al sueldo m�nimo, el programa le pedir� al
//usuario su sueldo actual y el sueldo m�nimo. Si el sueldo es mayor al m�nimo se debe
//mostrar un mensaje por pantalla indic�ndolo.

Algoritmo ejercicio_1
	//Definici�n
	Definir sueldoMinimo, sueldoActual Como Real
	Definir sueldoBajoMinimo Como Logico
	
	//Ingreso de datos
	Escribir "Ingrese el sueldo m�nimo: "
	Leer sueldoMinimo
	Escribir "Ingrese su sueldo actual: "
	Leer sueldoActual
	
	//Procesamiento
	sueldoBajoMinimo = sueldoActual < sueldoMinimo
	
	//Salida
	Si sueldoBajoMinimo Entonces
		Escribir "Su sueldo est� $" sueldoMinimo  - sueldoActual " por debajo del sueldo m�nimo"
	SiNo
		Escribir "Su sueldo est� por encima del m�nimo"
		
	FinSi
	Si NO(sueldoBajoMinimo) Entonces 
		
	FinSi
	
	
FinAlgoritmo
