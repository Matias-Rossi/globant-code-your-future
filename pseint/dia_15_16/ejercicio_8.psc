//	Realice un algoritmo que solicite al usuario una fecha y muestre por pantalla la fecha anterior.
//	Para ello se deberá utilizar un procedimiento llamado diaAnterior que reciba una fecha
//	representada a través de tres enteros dia, mes y anio, y retorne la fecha anterior. Puede
//	asumir que dia, mes y anio representan una fecha válida. Realice pruebas de escritorio para
//	los valores dia=5, mes=10, anio=2012 y para dia=1, mes=3, anio=2004.

Funcion esDivisor <- DivisiblePor( multiplo, divisor )
	Definir esDivisor Como Logico
	esDivisor = multiplo MOD divisor == 0
FinFuncion


Funcion anioEsBisiesto <- EsBisiesto( anio )
	Definir anioEsBisiesto Como Logico
	anioEsBisiesto = DivisiblePor(anio, 4) Y ( DivisiblePor(anio, 400) O No(DivisiblePor(anio, 100)) )
FinFuncion

Funcion cantDias <- DiasDelMes( mes, anio )
	Definir cantDias Como Entero
	Segun mes Hacer
		1, 3, 5, 7, 8, 10, 12: cantDias = 31
		2: Si EsBisiesto(anio) Entonces
				cantDias = 29
			SiNo
				cantDias = 28
			FinSi
		4, 6, 7, 8, 10, 12: cantDias = 30
		
	FinSegun
FinFuncion

SubProceso VolverAtrasUnAnio( anio Por Referencia )
	anio = anio - 1
FinSubProceso

SubProceso VolverAtrasUnMes( mes Por Referencia, anio Por Referencia )
	Si mes == 1 Entonces
		mes = 12
		VolverAtrasUnAnio(anio)
	SiNo
		mes = mes - 1
	FinSi
	
FinSubProceso

SubProceso diaAnterior(dia Por Referencia, mes Por Referencia, anio Por Referencia)
	Definir diaAtras, mesAtras Como Entero
	Si dia == 1 Entonces
		VolverAtrasUnMes(mes, anio)
		dia = DiasDelMes(mes, anio)
	SiNo
		dia = dia - 1
	FinSi
	
FinSubProceso


///
Algoritmo ejercicio_8
	Definir dia, mes, anio Como Entero
	
	Escribir "Ingrese día, mes y año (separados por <ENTER>): "
	Leer dia, mes, anio
	
	diaAnterior(dia, mes, anio)
	
	Escribir dia "/" mes "/" anio
	
	
FinAlgoritmo
