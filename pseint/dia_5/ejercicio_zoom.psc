Algoritmo ejercicio_zoom
	//Definici�n
	Definir horarioConexionUsuario, horaIngreso Como Entero
	horaIngreso = 1900
	
	//Entrada de datos
	Escribir "Ingrese su horario de conexion (hhmm): "
	Leer horarioConexionUsuario
	
	//Salida
	Si horarioConexionUsuario < horaIngreso + 15 Entonces
		Escribir "Llegaste a tiempo, tienes presente"
	SiNo
		Escribir "Hoy tendr�s tardanza. Recuerda avisarle a tus coaches cuando llegar�s tarde. ma�ana te esperamos a tiempo, tu participaci�n en el equipo es VITAL."
	FinSi
	
FinAlgoritmo
