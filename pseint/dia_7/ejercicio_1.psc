//	Escriba un programa que valide si una nota est� entre 0 y 10, sino est� entre 0 y 10 la
//	nota se pedir� de nuevo hasta que la nota sea correcta.
Algoritmo ejercicio_1
	Definir nota Como Real
	
	Escribir "Ingrese la nota: "
	Leer nota
	Mientras nota < 0 O nota > 10 Hacer
		Escribir "La nota introducida es inv�lida, intente nuevamente: "
		Leer nota
	FinMientras
	
	Escribir "La nota introducida ", nota, " es v�lida :)"
	
FinAlgoritmo
