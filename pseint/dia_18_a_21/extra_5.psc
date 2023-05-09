//	Tomando en cuenta el ejercicio 6, mejore el mecanismo de inserción del carácter, facilitando
//	un potencial reordenamiento del vector. Digamos que se pide ingresar el carácter en la
//	posición X y la misma está ocupada, entonces de existir un espacio en cualquier posición X-n
//	o X+n, desplazar los caracteres hacia la izq o hacia la derecha para poder ingresar el carácter
//	en cuestión en el lugar deseado. El procedimiento de reordenamiento debe ubicar el espacio
//	más cercano.

/// Subalgoritmos ya usados
Funcion letra <- ObtenerLetraEnPosicion(frase, pos)
	Definir letra Como Caracter
	letra = SubCadena(frase, pos, pos)
FinFuncion

SubProceso ImprimirVector(vector, cantidad)
	Definir i Como Entero
	Para i<-0 Hasta cantidad-1 Hacer
		Escribir Sin Saltar vector[i]
	FinPara
	Escribir ""
FinSubProceso

SubProceso CadenaAVector(cadenaIngresada, vector, tamanio)
	Definir i Como Entero
	Para i<-0 Hasta tamanio-1 Hacer		
		vector[i] = ObtenerLetraEnPosicion(cadenaIngresada, i)
	FinPara
FinSubProceso

SubProceso ReemplazarEnPosicion(vector, pos, reemplazo)
	vector[pos] = reemplazo
FinSubProceso


/// Subalgoritmos nuevos
Funcion distancia <- DistanciaDePosicionAEspacioPorDerecha(vector, tamanioVector, pos)
	Definir i, distancia Como Entero
	Definir espacioEncontrado Como Logico
	espacioEncontrado = Falso
	i = pos
	distancia = 0
	Hacer 
		Si (vector[i] == "") O (vector[i] == " ") Entonces
			espacioEncontrado = Verdadero
		SiNo
			i = i + 1
		FinSi
	Mientras Que No(espacioEncontrado) Y (i < tamanioVector)
	
	distancia = i - pos
FinFuncion


Funcion distancia <- DistanciaDePosicionAEspacioPorIzquierda(vector, tamanioVector, pos)
	Definir i, distancia Como Entero
	Definir espacioEncontrado Como Logico
	espacioEncontrado = Falso
	i = pos
	distancia = 0
	Hacer 
		Si (vector[i] == "") O (vector[i] == " ") Entonces
			espacioEncontrado = Verdadero
		SiNo
			i = i - 1
		FinSi
	Mientras Que No(espacioEncontrado) Y (i >= 0)
	
	Si espacioEncontrado Entonces
		distancia = pos - i
	SiNo
		distancia = 1000
		
	FinSi
	
FinFuncion


Funcion lado <- ObtenerLadoHaciaEspacioMasCercano(vector, tamanioVector, posReemplazo)
	Definir lado Como Caracter
	Definir i, distIzq, distDer Como Entero
	distDer = DistanciaDePosicionAEspacioPorDerecha(vector, tamanioVector, posReemplazo)
	distIzq = DistanciaDePosicionAEspacioPorIzquierda(vector, tamanioVector, posReemplazo)
	
	Si distIzq < distDer Entonces
		lado = "izquierdo"
	SiNo
		lado = "derecho"
	FinSi
	
FinFuncion

SubProceso QuitarCaracterEInsertarEnPosicion(vector, tamanioVector, posReemplazo, caracterReemplazo, ladoAQuitar) 
	Definir i, j, cantValoresACopiar Como Entero
	
	// "Reordeno" lado izquierdo
	j = 0
	Si ladoAQuitar == "izquierdo" Entonces
		i = 1
		cantValoresACopiar = tamanioVector - 2
	SiNo
		Escribir "Quitando por derecha"
		i = 0
		cantValoresACopiar = tamanioVector - 1
	FinSi
	
	Mientras i <= posReemplazo Hacer
		vector[j] = vector[i]
		i = i + 1
		j = j + 1
	FinMientras
	
	// "Reordeno" lado derecho
	j = cantValoresACopiar - 2 
	Si ladoAQuitar == "izquierdo" Entonces
		i = j
	SiNo
		i = j - 1
	FinSi
	
	Mientras j >= posReemplazo Hacer
		vector[j] = vector[i]
		j = j - 1
		i = i - 1
	FinMientras
	
	// Realizo reemplazo
	vector[posReemplazo] = caracterReemplazo
	
FinSubProceso


/// Algoritmo principal
Algoritmo extra_5
	Definir posReemplazo Como Entero
	Definir vector, cadenaIngresada, caracterReemplazo, ladoHaciaEspacioMasCercano Como Caracter
	Dimension vector[20]
	
	// Ingreso de la frase
	Escribir "Ingrese una frase de no más de 20 caracteres: "
	Leer cadenaIngresada
	
	// Transformación
	CadenaAVector(cadenaIngresada, vector, 20)
	ImprimirVector(vector, 20)
	
	// Ingreso de posición y caracter para el reemplazo
	Escribir "Ingrese una posición y caracter para reemplazar en el vector, separados por un <ENTER>: "
	Leer posReemplazo, caracterReemplazo
	
	ladoHaciaEspacioMasCercano = ObtenerLadoHaciaEspacioMasCercano(vector, 20, posReemplazo)
	
	QuitarCaracterEInsertarEnPosicion(vector, 20, posReemplazo, caracterReemplazo, ladoHaciaEspacioMasCercano)
	ImprimirVector(vector, 20)
	
FinAlgoritmo