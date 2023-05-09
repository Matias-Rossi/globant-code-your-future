// 6. Diseñar un procedimiento que permita convertir coordenadas polares (radio, ángulo) 
// en cartesianas (x,y). NOTA: x=radio*cos(ángulo) e y=radio*sen(ángulo).

/// Hay algo mal, no dan los resultados

Funcion cart_x = PolaresAX( radio, angulo )
	Definir cart_x Como Real
	cart_x = radio * cos(angulo)
FinFuncion

Funcion cart_y = PolaresAY( radio, angulo )
	Definir cart_y Como Real
	cart_y = radio * sen(angulo)
FinFuncion


/// Algoritmo principal
Algoritmo extra_6
	Definir radio, angulo, cart_x, cart_y Como Real
	
	Escribir "Ingrese un radio y ángulo separados por <ENTER>: "
	Leer radio, angulo
	
	cart_x = PolaresAX(radio, angulo)
	cart_y = PolaresAY(radio, angulo)
	
	Escribir "x = ", cart_x
	Escribir "y = ", cart_y
	
	
FinAlgoritmo
