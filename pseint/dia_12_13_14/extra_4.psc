//	4. Dos n�meros son amigos si cada uno de ellos es igual a la suma de los divisores del otro. 
//	Por ejemplo 220 y 284 son amigos ya que: 
//		- Suma de divisores de 284 = 1 + 2 + 4 + 71 + 142 = 220 
//		- Suma de divisores de 220 = 1 + 2 + 4 + 5 + 10 + 11 + 20 + 22 + 44 + 55 + 110 = 284 
//	Dise�e un algoritmo que a trav�s del uso de una funci�n determine si dos n�meros ingresados 
//	por el usuario son amigos o no

Funcion resultado <- DivisiblePor( multiplo, divisor )
	Definir resultado Como Logico
	resultado = multiplo MOD divisor == 0
	
FinFuncion



Funcion suma <- SumarDivisores(num)
	Definir suma, i Como Entero
	suma = 0
	
	Para i=1 Hasta num/2 Con Paso 1 Hacer
		Si DivisiblePor(num, i) Entonces
			suma = suma + i
		FinSi
		
	FinPara
	
FinFuncion



Funcion numerosSonAmigos <- SonAmigos( num_1, num_2 )
	// Definiciones
	Definir numerosSonAmigos Como Logico
	Definir sumaDivisores_1, sumaDivisores_2 Como Entero
	
	// Obtenci�n de divisores
	sumaDivisores_1 = SumarDivisores(num_1)
	sumaDivisores_2 = SumarDivisores(num_2)
	
	// Evaluaci�n
	numerosSonAmigos = (sumaDivisores_1 == num_2) Y (sumaDivisores_2 == num_1)
	
FinFuncion



/// Algoritmo principal
Algoritmo extra_4
	// Definiciones
	Definir num_1, num_2 Como Entero
	Definir numerosSonAmigos Como Logico
	
	// Ingreso de datos
	Escribir "Ingrese dos n�meros, separados por un <ENTER>: "
	Leer num_1, num_2
	
	// Procesamiento
	numerosSonAmigos = SonAmigos(num_1, num_2)
	
	// Salida
	Si numerosSonAmigos Entonces
		Escribir "Los n�meros son amigos."
	SiNo
		Escribir "Los n�meros >NO< son amigos."
	FinSi
	
	
FinAlgoritmo
