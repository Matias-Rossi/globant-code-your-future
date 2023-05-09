//	Realizar una funci�n que reciba un numero ingresado por el usuario y averig�e si el n�mero es
//	capic�a o no (Por ejemplo: 12321). Nota: recordar el uso del MOD y el Trunc. No podemos
//	transformar el numero a cadena para realizar el ejercicio.

Funcion digitos <- ContarDigitos( num )
	Definir digitos Como Entero
	digitos = 0
	
	Hacer 
		num = trunc(num / 10)
		digitos = digitos + 1
	Mientras Que num > 0
FinFuncion



Funcion digito <- ObtenerDigitoEnPosicion(num, pos) // (La posici�n es medida desde el final)
	// Definiciones
	Definir digito, i Como Entero
	Definir cociente Como Real
	cociente = num
	
	// Divisiones por 10
	Para i=0 Hasta pos Hacer
		cociente = trunc(cociente) / 10 //12.5
	FinPara
	num = trunc(cociente) //12
	
	digito = trunc( (cociente - num) * 10 ) // Es obligatorio truncar por m�s que no sea matem�ticamente necesario
	
FinFuncion



Funcion resultado <- EsCapicua( num )
	// Definiciones
	Definir cantDigitos, i, digito, digitoSimetrico, posDigitoSimetrico Como Entero
	Definir resultado Como Logico
	resultado = Verdadero
	cantDigitos = ContarDigitos( num )
	
	// Verifico que la primera mitad de los d�gitos se corresponda con la segunda
	Para i=0 Hasta trunc(cantDigitos/2) Con Paso 1 Hacer
		digito = ObtenerDigitoEnPosicion( num, i )
		
		posDigitoSimetrico = cantDigitos-i-1
		digitoSimetrico = ObtenerDigitoEnPosicion( num, posDigitoSimetrico )
		
		// Comparaci�n
		Si digito <> digitoSimetrico Entonces
			resultado = Falso
		FinSi
	FinPara
		
FinFuncion



/// Algoritmo principal
Algoritmo ejercicio_13
	Definir nIngresado Como Entero
	
	Escribir "Ingrese un n�mero: "
	Leer nIngresado
	
	Si EsCapicua(nIngresado) Entonces
		Escribir "El n�mero ingresado es capic�a."
	SiNo
		Escribir "El n�mero ingresado >NO< es capic�a."
	FinSi
	
FinAlgoritmo
