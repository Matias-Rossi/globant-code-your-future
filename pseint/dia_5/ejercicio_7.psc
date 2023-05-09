//Continuando el ejercicio anterior, ahora se pedir� una frase o palabra y se validara si la
//primera letra de la frase es igual a la �ltima letra de la frase. Se deber� de imprimir un
//mensaje por pantalla que diga "CORRECTO", en caso contrario, se deber� imprimir "INCORRECTO".

Algoritmo ejercicio_7
	//Definici�n de variables
	Definir primeraLetra, ultimaLetra, textoIntroducido Como Cadena
	Definir longitudTexto Como Entero
	Definir coincidenLasLetras Como Logico
	
	//Ingreso de datos
	Escribir "Ingrese una frase o palabra, cuya �ltima letra coincida con la primera:"
	Leer textoIntroducido
	
	//Procesamiento
	longitudTexto = Longitud(textoIntroducido)
	
	primeraLetra = Subcadena(textoIntroducido, 0, 0)
	ultimaLetra = Subcadena(textoIntroducido, longitudTexto-1, longitudTexto-1)
	
	coincidenLasLetras = primeraLetra == ultimaLetra
	
	//Salida
	Si coincidenLasLetras Entonces
		Escribir "Las letras coinciden " primeraLetra " > " ultimaLetra
	SiNo
		Escribir "Las letras no coinciden " primeraLetra " > " ultimaLetra
	FinSi
	
FinAlgoritmo