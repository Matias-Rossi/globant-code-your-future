//Realizar un programa que pida introducir solo frases o palabras de 6 caracteres. Si el
//usuario ingresa una frase o palabra de 6 caracteres se deber� de imprimir un mensaje
//por pantalla que diga "CORRECTO", en caso contrario, se deber� imprimir
//"INCORRECTO". Nota: investigar la funci�n Longitud() de PseInt.

Algoritmo ejercicio_3
	//Definici�n de variables
	Definir textoIntroducido Como Caracter
	
	//Ingreso de datos
	Escribir "Ingrese una palabra o frase de 6 caracteres: "
	Leer textoIntroducido
	
	//Procesamiento
	Si Longitud(textoIntroducido) == 6 Entonces
		Escribir "CORRECTO"
	SiNo
		Escribir "INCORRECTO"
	FinSi
	
	//Salida
	
FinAlgoritmo