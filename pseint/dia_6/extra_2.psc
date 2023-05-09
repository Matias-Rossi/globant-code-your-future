//	Leer tres números que denoten una fecha (día, mes, año) y comprobar que sea una
//	fecha válida. Si la fecha no es válida escribir un mensaje de error por pantalla. Si la fecha
//	es válida se debe imprimir la fecha cambiando el número que representa el mes por su
//	nombre. Por ejemplo: si se introduce 1 2 2006, se deberá imprimir "1 de febrero de
//	2006".

Algoritmo extra_2
	// Definición
	Definir dia, mesNum, anio, diasMes Como Entero
	Definir mesTexto Como Cadena
	Definir fechaEsValida, anioEsBisiesto, anioEsNegativo Como Logico
	
	// Ingreso de datos
	Escribir "Ingrese una fecha separando dia, mes y año mediante <ENTER>: "
	Leer dia, mesNum, anio
	
	// Validación fecha
	fechaEsValida = Verdadero
	
	// Año
	anioEsBisiesto = ((anio % 4 == 0) Y (anio % 100 <> 0)) O ((anio % 400 == 0) Y (anio % 100 == 0))
	anioEsNegativo = anio < 0
	
	
	Segun mesNum Hacer
		1: 
			mesTexto = "Enero"
			diasMes = 31
		2: 
			mesTexto = "Febrero"
			Si anioEsBisiesto Entonces
				diasMes = 29
			SiNo
				diasMes = 28
			FinSi
		3: 
			mesTexto = "Marzo"
			diasMes = 31
		4: 
			mesTexto = "Abril"
			diasMes = 30
		5: 
			mesTexto = "Mayo"
			diasMes = 31
		6: 
			mesTexto = "Junio"
			diasMes = 30
		7: 
			mesTexto = "Julio"
			diasMes = 31
		8: 
			mesTexto = "Agosto"
			diasMes = 31
		9: 
			mesTexto = "Septiembre"
			diasMes = 30
		10: 
			mesTexto = "Octubre"
			diasMes = 31
		11: 
			mesTexto = "Noviembre"
			diasMes = 30
		12: 
			mesTexto = "Diciembre"
			diasMes = 31
		De Otro Modo:
			fechaEsValida = Falso
	FinSegun
	
	// Día
	Si (dia < 1) O (dia > diasMes) Entonces
		fechaEsValida = Falso
	FinSi
	
	Si fechaEsValida Entonces
		Si anioEsNegativo Entonces
			Escribir dia, " de ", mesTexto, " de ", Abs(anio), " AC"
		SiNo
			Escribir dia, " de ", mesTexto, " de ", anio 
		FinSi
		
		
	SiNo
		Escribir "La fecha ingresada no es válida"
	FinSi
	
FinAlgoritmo
