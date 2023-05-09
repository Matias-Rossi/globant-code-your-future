//	Escribir un programa que procese una secuencia de caracteres ingresada por teclado y
//	terminada en punto, y luego codifique la palabra o frase ingresada de la siguiente manera:
//	cada vocal se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres
//	(incluyendo a las vocales acentuadas) se mantienen sin cambios.

//	a -> @	;	e -> #	;	i -> $	;	o -> %	;	u -> *


Funcion letra <- ObtenerLetraEnPosicion(frase, pos)
	Definir letra Como Caracter
	letra = SubCadena(frase, pos, pos)
	
FinFuncion


Funcion reemplazo <- ObtenerReemplazoSiAplica(letra)
	Definir reemplazo Como Caracter
	
	Segun letra Hacer
		"a": reemplazo = "@"
		"e": reemplazo = "#"
		"i": reemplazo = "$"
		"o": reemplazo = "%"
		"u": reemplazo = "*"
		De Otro Modo:
			reemplazo = letra
	FinSegun
	
FinFuncion


Funcion fraseModificada <- ReemplazarSecuenciaEnCaracteres(frase)
	Definir longFrase, i Como Entero
	Definir fraseModificada, letraVieja, letraNueva Como Caracter
	
	longFrase = Longitud(frase)
	fraseModificada = ""
	
	// Se podría hacer con un "Mientras Que (Hacer)"
	Para i=0 Hasta longFrase Hacer
		letraVieja = ObtenerLetraEnPosicion(frase, i)
		letraNueva = ObtenerReemplazoSiAplica(letraVieja)
		fraseModificada = Concatenar(fraseModificada, letraNueva)
	FinPara
	
FinFuncion



/// Algoritmo principal
Algoritmo ejercicio_4
	Definir frase, fraseModificada Como Caracter
	
	Escribir "Ingrese una frase terminada en punto:"
	Leer frase
	
	fraseModificada = ReemplazarSecuenciaEnCaracteres(frase)
	Escribir fraseModificada
	
FinAlgoritmo
