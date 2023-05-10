//	Una distribuidora de Nescafé tiene 4 representantes que viajan por toda la Argentina
//	ofreciendo sus productos. Para tareas administrativas el país está dividido en cinco zonas:
//	Norte, Sur, Este, Oeste y Centro. Mensualmente almacena sus datos y obtiene distintas
//	estadísticas sobre el comportamiento de sus representantes en cada zona. Se desea hacer un
//	programa que lea el monto de las ventas de los representantes en cada zona y calcule luego:
//		a) el total de ventas de una zona introducida por teclado
//		b) el total de ventas de un vendedor introducido por teclado en cada una de las zonas
//		c) el total de ventas de todos los representantes.
//
//	Planteo una matriz con el siguiente formato
//
//				  0		1	  2		3	   4				
//          	Norte  Sur  Este  Oeste  Centro
//  0	Rep 1
//  1	Rep 2
//  2	Rep 3
//  3	Rep 4

/// Subalgoritmos ya usados
SubProceso mostrarMatriz(matriz, filas, columnas)
	Definir i, j Como Entero
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			Escribir Sin Saltar matriz[i, j], "  "
		FinPara
		Escribir ""
	FinPara
FinSubProceso

SubProceso llenarAleatoriamenteMatriz(matriz, filas, columnas)
	Definir i, j Como Entero
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			matriz[i, j] = Aleatorio(0,9)
		FinPara
	FinPara
FinSubProceso


/// Subalgoritmos nuevos
Funcion respuesta <- mostrarMenu()
	Definir respuesta Como Entero
	
	Escribir "######################################"
	Escribir "Ingrese una opción: "
	Escribir "1) Ver total de ventas de una zona"
	Escribir "2) Ver ventas de un representante por zona"
	Escribir "3) Ver total de ventas de todos los representantes"
	Escribir "4) Ver datos sin procesar"
	Escribir "5) Salir"
	Leer respuesta
FinFuncion


Funcion num <- zonaANumero(zona)
	Definir num Como Entero
	Segun zona
		"N", "Norte": num = 0
		"S", "Sur": num = 1
		"E", "Este": num = 2
		"O", "Oeste": num = 3
		"C", "Centro": num = 4
	FinSegun
FinFuncion


Funcion total <- calcularTotalZona(matriz, columna)
	Definir total, i Como Entero
	total = 0
	Para i=0 Hasta 3 Hacer
		total = total + matriz[i, columna]
	FinPara
FinFuncion


SubProceso menuVentasEnZona(matriz)
	Definir respuestaUsuario Como Caracter
	Definir respuestaUsuarioValida Como Logico
	Definir totalZona Como Entero
	
	Hacer
		Escribir "Introduzca una zona para ver el total de sus ventas (N/S/E/O/C) :"
		Leer respuestaUsuario
		
		respuestaUsuario = Mayusculas(respuestaUsuario)
		respuestaUsuarioValida = Verdadero
		
		Segun respuestaUsuario
			"N": respuestaUsuario = "Norte"
				totalZona = calcularTotalZona(matriz, zonaANumero(respuestaUsuario))
			"S": respuestaUsuario = "Sur"
				totalZona = calcularTotalZona(matriz, zonaANumero(respuestaUsuario))
			"E": respuestaUsuario = "Este"
				totalZona = calcularTotalZona(matriz, zonaANumero(respuestaUsuario))
			"O": respuestaUsuario = "Oeste"
				totalZona = calcularTotalZona(matriz, zonaANumero(respuestaUsuario))
			"C": respuestaUsuario = "Norte"
				totalZona = calcularTotalZona(matriz, zonaANumero(respuestaUsuario))
			Otro Caso: respuestaUsuarioValida = Falso
		FinSegun
		
		Si respuestaUsuarioValida Entonces
			Escribir "Total de la zona ", respuestaUsuario, ": ", totalZona
		FinSi
		
	Mientras Que No(respuestaUsuarioValida)
FinSubProceso


SubProceso menuVentasRepresentante(ventas)
	Definir respuestaUsuario Como Entero
	Definir respuestaUsuarioValida Como Logico
	Definir totalZona Como Entero
	
	Hacer
		Escribir "Introduzca el número de representante :"
		Leer respuestaUsuario
		
		respuestaUsuarioValida = 0 < respuestaUsuario Y respuestaUsuario < 5
		
		Si respuestaUsuarioValida Entonces
			Escribir "Totales para el representante ", respuestaUsuario, ": "
			Escribir " - Norte: ", ventas[respuestaUsuario-1, zonaANumero("N")]
			Escribir " - Sur: ", ventas[respuestaUsuario-1, zonaANumero("S")]
			Escribir " - Este: ", ventas[respuestaUsuario-1, zonaANumero("E")]
			Escribir " - Oeste: ", ventas[respuestaUsuario-1, zonaANumero("O")]
			Escribir " - Centro: ", ventas[respuestaUsuario-1, zonaANumero("C")]
		FinSi
		
	Mientras Que No(respuestaUsuarioValida)
FinSubProceso

SubProceso calcularTotalVentas(ventas)
	Definir i, j, total Como Entero
	total = 0
	Para i=0 Hasta 3
		Para j=0 Hasta 4
			total = total + ventas[i, j]
		FinPara
	FinPara
	
	Escribir "El total de ventas fue: ", total
FinSubProceso


/// Algoritmo principal
Algoritmo extra_8
	Definir ventas Como Entero
	Dimension ventas[4, 5]
	
	Definir seleccionMenu Como Entero
	
	llenarAleatoriamenteMatriz(ventas, 4, 5)
	
	Hacer
		seleccionMenu = mostrarMenu()
		
		Segun seleccionMenu
			1: menuVentasEnZona(ventas)
			2: menuVentasRepresentante(ventas)
			3: calcularTotalVentas(ventas)
			4: mostrarMatriz(ventas, 4, 5)
		FinSegun
	Mientras Que seleccionMenu <> 5
	
	
	
	
FinAlgoritmo
