//Escriba un programa que pida 3 notas y valide si esas notas est�n entre 1 y 10. Si est�n
//entre esos par�metros se debe poner en verdadero una variable de tipo l�gico y si no
//ponerla en falso. Al final el programa debe decir si las 3 notas son correctas usando la
//variable de tipo l�gico.

Algoritmo ejercicio_5
	//Definici�n de variables
	Definir nota1, nota2, nota3 Como Entero
	Definir sonValidas Como Logico 
	
	//Ingreso de datos
	Escribir "Ingrese las 3 notas, separadas por <ENTER>:"
	Leer nota1
	Leer nota2
	Leer nota3
	
	//Procesamiento
	sonValidas = (nota1 >= 1 Y nota1 <= 10) Y (nota2 >= 1 Y nota2 <= 10) Y (nota2 >= 1 Y nota2 <= 10)
	
	//Salida
	Si sonValidas Entonces 
		Escribir "Las 3 notas son correctas."
	SiNo
		Escribir "Una (o m�s de una) nota son incorrectas."
	FinSi
	
FinAlgoritmo