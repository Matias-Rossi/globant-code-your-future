//Dise�e un algoritmo que lea un n�mero de tres cifras y determine si es o no capic�a.

Algoritmo ejercicio_4
	//Definici�n
	Definir nIngresado, nInicial, nFinal Como Entero
	Definir esCapicua Como Logico
	
	//Ingreso de datos
	Escribir "Ingrese un n�mero de tres cifras: "
	Leer nIngresado
	
	//Procesamiento
	nInicial = trunc( nIngresado/100 )
	nFinal = nIngresado MOD 10
	
	esCapicua = nInicial == nFinal
	
	//Salida
	Si esCapicua Entonces
		Escribir "El n�mero ES capic�a."
	SiNo
		Escribir "El n�mero NO es capic�a."
	FinSi
	
		
FinAlgoritmo
