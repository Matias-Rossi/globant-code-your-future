//	Los empleados de una f�brica trabajan en dos turnos: Diurno y Nocturno. Se desea calcular el
//	jornal diario de acuerdo con las siguientes reglas:
//	a) La tarifa de las horas diurnas es de $ 90
//	b) La tarifa de las horas nocturnas es de $ 125
//	c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y en
//		un 15% si el turno es nocturno.		
//	El programa debe solicitar la siguiente informaci�n al usuario: el nombre del trabajador, el d�a
//	de la semana, el turno (diurno o nocturno) y la cantidad de horas trabajadas. Adem�s,
//	debemos preguntarle al usuario si el d�a de la semana (lunes, martes, mi�rcoles, etc.) era
//	festivo o no, para poder calcular el jornal diario. Utilice una funci�n para realizar el c�lculo.

Funcion tarifa <- CalcularTarifa( esFestivo, esTurnoDiurno, horasTrabajadas )
	Definir tarifa, factorFestivo Como Real
	
	// Seg�n turno
	Si esTurnoDiurno Entonces
		tarifa = 90 * horasTrabajadas
		factorFestivo = 1.10
	SiNo
		tarifa = 125 * horasTrabajadas
		factorFestivo = 1.15
	FinSi
	
	// Seg�n festividad
	Si esFestivo Entonces
		tarifa = tarifa * factorFestivo
	FinSi
	
	
FinFuncion


/// Algoritmo principal
Algoritmo ejercicio_9
	// Definiciones
	Definir nombreTrabajador, diaSemana, esFestivoRespuesta, turnoRespuesta Como Caracter
	Definir tarifaTrabajador Como Real
	Definir esFestivo, esTurnoDiurno Como Logico
	Definir horasTrabajadas Como Entero
	
	// Ingreso de datos
	Escribir "Ingrese el nombre del trabajador:"
	Leer nombreTrabajador
	Escribir "Ingrese el d�a de la semana:"
	Leer diaSemana
	Escribir "�Es un d�a festivo? (S/N): "
	Leer esFestivoRespuesta
	Escribir "Ingrese el turno (D/N):"
	Leer turnoRespuesta
	Escribir "Ingrese la cantidad de horas trabajadas: "
	Leer horasTrabajadas
	
	esFestivo = Mayusculas(esFestivoRespuesta) == "S"
	esTurnoDiurno = Mayusculas(turnoRespuesta) == "D"
	
	// C�lculo de tarifa
	tarifaTrabajador = CalcularTarifa(esFestivo, esTurnoDiurno, horasTrabajadas)
	
	// Salida
	Escribir "Al trabajador ", nombreTrabajador, " le corresponde un jornal de $", tarifaTrabajador
	
	
FinAlgoritmo
