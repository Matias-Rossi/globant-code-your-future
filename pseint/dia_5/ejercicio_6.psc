//Escriba un programa que pida una frase o palabra y valide si la primera letra de esa frase
//es una 'A'. Si la primera letra es una 'A', se deber� de imprimir un mensaje por pantalla
//que diga "CORRECTO", en caso contrario, se deber� imprimir "INCORRECTO". Nota:
//investigar la funci�n Subcadena de PseInt.

Algoritmo ejercicio_6
	//Definici�n de variables
	Definir textoIntroducido, primeraLetra Como Caracter
	Definir primeraLetraEsA Como Logico
	
	//Ingreso de datos
	Escribir "Ingrese un texto cuya primera letra sea una A: "
	Leer textoIntroducido
	
	//Procesamiento
	primeraLetra = Subcadena(textoIntroducido, 0, 1)
	
	primeraLetraEsA = primeraLetra == "A"
	
	//Salida
	Si primeraLetraEsA Entonces
		Escribir "CORRECTO"
	SiNo
		Escribir "INCORRECTO"
	FinSi
	
FinAlgoritmo