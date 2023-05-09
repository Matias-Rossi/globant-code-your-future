// "¡Hola! Muchas gracias por cubrirme. Lo principal que debes hacer es completar la hoja de
// cálculo de ingresos mensuales. Puedes hacerlo buscando los últimos ingresos publicitarios en los
// informes de marketing. Después de hacer todo eso, revisa mi correo electrónico y si hay menos
// de 10 correos sin leer revisa mi correo de voz para ver si hay alguna solicitud de los ejecutivos. Si
// hay tales solicitudes, hágalas primero a menos que tenga una solicitud de emergencia de otro
// departamento. Una vez que hayas terminado con la solicitud de cumplimiento, riegue la planta
// de mi escritorio después de apagar la computadora. Ah, espera, debería haber mencionado un
// par de cosas: debes iniciar sesión con usuario de administrador para ver los informes de
// marketing, y tendrás que enviarme un correo electrónico de actualización justo después de que
// termines de manejar las solicitudes. Bueno, gracias de nuevo. ¡Es de gran ayuda! Te debo el
// almuerzo cuando regrese."
//
// Nuestra tarea será imprimir por pantalla la lista de tareas en el orden que corresponden para que
// luego las podamos realizar. ¿Te animas a colocar las tareas en el orden correcto? Para hacer
// esto, debes crear en PSeInt la cantidad de variables que creas correctas y asignarles valor.
//	Por ejemplo:
//		x cantidadEmails = 6
//		x solicitudesEjecutivos = 3
//		x solicitudesEmergencia = ?

// Iniciar sesión c/usuario de Admin
// Completar la hoja de cálculo de ingresos mensuales (buscando ingresos publicitarios en los informes de marketing)
// Revisar el correo electrónico 
// Responder correos (si son más de 10, primero)
// Revisar correo de voz (para ver si hay alguna solicitud de los ejecutivos, si hay menos de 10 emails)
// 		Realizar solicitudes de emergencia
// 		Realizar solicitudes de ejecutivos
// 		Enviar correo de actualización
// Apagar la computadora
// Regar la planta


Algoritmo ejercicio_6
	//Definición
	Definir cantidadEmails, solicitudesEjecutivos, solicitudesEmergencia Como Entero
	
	Escribir "Iniciar sesión como usuario de administrador"
	Escribir "Completar la hoja de cálculo de ingresos mensuales (buscando ingresos publicitarios en los informes de marketing)"
	Escribir "Revisar el correo electrónico, ingrese cantidad:"
	Leer cantidadEmails
	
	// Si hay más de 10 mails, los atiendo ahora
	Si cantidadEmails > 10 Entonces
		Escribir "Atender mails"
	FinSi
	
	// Si o si reviso correos de voz
	Escribir "Revisar correos de voz"
	Escribir "Ingrese cantidad de solicitudes de emergencia: "
	Leer solicitudesEmergencia
	
	Si solicitudesEmergencia > 0 Entonces
		Escribir "Realizar solicitudes de Emergencia"
	FinSi
	
	Escribir "Ingrese cantidad de solicitudes de ejecutivos: "
	Leer solicitudesEjecutivos
	
	Si solicitudesEjecutivos > 0 Entonces 
		Escribir "Realizar solicitudes de Ejecutivos"
	FinSi
	Escribir "Enviar correo de actualización"
	
	// Si hay menos de 10 mails, los atiendo recién ahora
	Si NO (cantidadEmails > 10) Entonces
		Escribir "Atender mails"
	FinSi
	
	Escribir "Apagar la computadora"
	Escribir "Regar la planta"
	
FinAlgoritmo
