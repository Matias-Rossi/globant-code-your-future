Funcion volumen <- calcularVolumen(largo, ancho, profundidad)
	Definir volumen Como Real
	volumen = largo * ancho * profundidad
FinFuncion


Funcion superficie <- calcularSuperficie(altura, ancho)
	Definir superficie Como Real
	superficie = altura * ancho
FinFuncion


SubProceso calcularMuro()
	Definir espesor Como Entero
	Definir largo, alto, cemento, arena, ladrillos, superficieMuro Como Real
	Definir respuestaEspesor Como Caracter
	
	// Ingreso de datos
	Hacer 
		Escribir "¿De cuánto es el espesor del muro?"
		Escribir "a. 20cm"
		Escribir "b. 30cm" 
		Leer respuestaEspesor
		respuestaEspesor = Minusculas(respuestaEspesor)
	Mientras Que respuestaEspesor <> "a" Y respuestaEspesor <> "b"
	
	Si respuestaEspesor == "a" Entonces
		espesor = 20
	SiNo
		espesor = 30
	FinSi
	
	Escribir "Ingrese el largo del muro: "
	Leer largo
	Escribir "Ingrese el alto del muro: "
	Leer alto
	
	// Procesamiento
	superficieMuro = calcularSuperficie(largo, alto)
	Si espesor == 20 Entonces
		cemento = 15.2 * superficieMuro
		arena = 0.115 * superficieMuro
		ladrillos = 120 * superficieMuro
	SiNo
		cemento = 10.9 * superficieMuro
		arena = 0.09 * superficieMuro
		ladrillos = 90 * superficieMuro
	FinSi
	
	// Salida
	Escribir "Los materiales necesairos para ", superficieMuro, " m^2 de muro de ", espesor, " cm de espesor son: "
	Escribir "- Cemento: ", cemento, " kg" 
	Escribir "- Arena: ", arena, " m^3" 
	Escribir "- Ladrillos: ", ladrillos
	
FinSubProceso


SubProceso calcularViga()
	Definir largo, cemento, arena, piedra, hierroDel8, hierroDel4 Como Real
	
	//Ingreso de datos
	Escribir "Ingrese el largo de la viga: "
	Leer largo
	
	//Procesamiento
	cemento = largo * 9
	arena = largo * 0.02
	piedra = largo * 0.02
	hierroDel8 = largo * 4
	hierroDel4 = largo * 3
	
	// Salida
	Escribir "Los materiales necesairos para ", largo, " m de viga son:"
	Escribir "- Cemento: ", cemento, " kg" 
	Escribir "- Arena: ", arena, " m^3" 
	Escribir "- Piedra: ", piedra, " m^2"
	Escribir "- Hierro del 8: ", hierroDel8, " m"
	Escribir "- Hierro del 4: ", hierroDel4, " m"
	
FinSubProceso
