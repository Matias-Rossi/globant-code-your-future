Algoritmo ejercicio_zoom
	//Definición
	Definir horarioConexionUsuario, horaIngreso Como Entero
	horaIngreso = 1900
	
	//Entrada de datos
	Escribir "Ingrese su horario de conexion (hhmm): "
	Leer horarioConexionUsuario
	
	//Salida
	Si horarioConexionUsuario < horaIngreso + 15 Entonces
		Escribir "Llegaste a tiempo, tienes presente"
	SiNo
		Escribir "Hoy tendrás tardanza. Recuerda avisarle a tus coaches cuando llegarás tarde. mañana te esperamos a tiempo, tu participación en el equipo es VITAL."
	FinSi
	
FinAlgoritmo
