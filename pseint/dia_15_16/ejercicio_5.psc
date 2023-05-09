//	Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto y muestra
//	una cadena con un espacio adicional tras cada letra.
//	Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se use
//	dicho procedimiento.

Funcion letra <- ObtenerLetraEnPosicion(frase, pos)
	Definir letra Como Caracter
	letra = SubCadena(frase, pos, pos)
	
FinFuncion


Funcion fraseConvertida <- convertirEspaciado(frase) 
	Definir fraseConvertida, letra Como Caracter
	Definir longFrase, i Como Entero
	longFrase = Longitud(frase)
	fraseConvertida = ""
	
	Para i=0 Hasta longFrase Hacer
		letra = ObtenerLetraEnPosicion(frase, i)
		letra = Concatenar(letra, " ")
		
		fraseConvertida = Concatenar(fraseConvertida, letra)
	FinPara

FinFuncion
	


/// Algoritmo principal
Algoritmo ejercicio_5
	Definir frase, fraseModificada Como Caracter
	
	Escribir "Ingrese una frase terminada:"
	Leer frase
	
	fraseModificada = convertirEspaciado(frase)
	Escribir fraseModificada
	
FinAlgoritmo
