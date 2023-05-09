//Realiza un programa que sólo permita introducir los caracteres ?S? y ?N?. Si el usuario
//ingresa alguno de esos dos caracteres se deberá de imprimir un mensaje por pantalla
//que diga "CORRECTO", en caso contrario, se deberá imprimir "INCORRECTO".

Algoritmo ejercicio_1
	//Definición de variables
	Definir caracterIntroducido Como Caracter
	
	//Ingreso de datos
	Escribir "Ingrese un caracter (S/N): "
	Leer caracterIntroducido
	
	//Procesamiento y Salida
	Si (caracterIntroducido == "S") O (caracterIntroducido == "N") Entonces
		Escribir "CORRECTO"
	SiNo
		Escribir "INCORRECTO"
	FinSi
	
	
	
FinAlgoritmo
