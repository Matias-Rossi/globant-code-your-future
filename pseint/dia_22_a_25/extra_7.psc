//	Una empresa de venta de productos por correo desea realizar una estadística de las ventas
//	realizadas de cada uno de sus productos a lo largo de una semana. Distribuya luego 5
//	productos en los 5 días hábiles de la semana. Se desea conocer:
//		a) Total de ventas por cada día de la semana.
//		b) Total de ventas de cada producto a lo largo de la semana.
//		c) El producto más vendido en cada semana.
//		d) El nombre, el día de la semana y la cantidad del producto más vendido.
//
//	El informe final tendrá un formato como el que se muestra a continuación:
//
//					Lunes	Martes	Miércoles	Jueves	Viernes		Total Producto
//	Prod 1
//	Prod 2
//	Prod 3
//	Prod 4
//	Prod 5
//	Total semana
//	Prod + vendido

// Nota: asumo que los ítems a, b, c y d son consultados desde la tabla. No los imprimo aparte

/// Subalgoritmos ya usados
SubProceso llenarAleatoriamenteMatriz(matriz, filas, columnas)
	Definir i, j Como Entero
	Para i=0 Hasta filas-1
		Para j=0 Hasta columnas-1
			matriz[i, j] = Aleatorio(0,9)
		FinPara
	FinPara
FinSubProceso


/// Subalgoritmos nuevos
SubProceso agregarVentasTotalesProducto(informe)
	Definir fila, columna, suma Como Entero
	Para fila=0 Hasta 4 Hacer
		suma = 0
		Para columna=0 Hasta 4 Hacer
			suma = suma + informe[fila, columna]
		FinPara
		informe[fila, 5] = suma
	FinPara
FinSubProceso


SubProceso agregarTotalesSemana(informe)
	Definir columna, fila, totalSemana Como Entero
	Para columna=0 Hasta 5
		totalSemana = 0
		Para fila=0 Hasta 4 Hacer
			totalSemana = totalSemana + informe[fila, columna]
		FinPara
		informe[5, columna] = totalSemana
	FinPara
FinSubProceso


SubProceso agregarProductoMasVendido(informe)
	Definir productoMasVendido, cantidadMasVendido, fila, columna Como Entero
	
	Para columna=0 Hasta 5 Hacer
		productoMasVendido = 1
		cantidadMasVendido = informe[0, columna]
		Para fila=0 Hasta 4 Hacer
			Si informe[fila, columna] > cantidadMasVendido Entonces
				productoMasVendido = fila+1
				cantidadMasVendido = informe[fila, columna]
			FinSi	
		FinPara
		informe[6, columna] = productoMasVendido
	FinPara
FinSubProceso


SubProceso realizarInforme(matriz)
	agregarVentasTotalesProducto(matriz)
	agregarTotalesSemana(matriz)
	agregarProductoMasVendido(matriz)
FinSubProceso


Funcion leyenda <- obtenerLeyendaParaFila(fila) 
	Definir leyenda Como Cadena
	Segun fila 
		0: leyenda = "             L  M  X  J  V  Total"
		1: leyenda = "Producto 1   "
		2: leyenda = "Producto 2   "
		3: leyenda = "Producto 3   "
		4: leyenda = "Producto 4   "
		5: leyenda = "Producto 5   "
		6: leyenda = "Total día.   "
		7: leyenda = "Pr.+ vend.   "
		
	FinSegun
FinSubProceso


SubProceso mostrarInforme(informe)
	Definir i, j Como Entero
	Escribir obtenerLeyendaParaFila(0)
	Para i=0 Hasta 6
		Escribir Sin Saltar obtenerLeyendaParaFila(i+1)
		Para j=0 Hasta 5
			Escribir Sin Saltar informe[i, j], "  "
		FinPara
		Escribir ""
	FinPara
FinSubProceso



/// Algoritmo principal
Algoritmo extra_7
	Definir matriz Como Entero
	Dimension matriz[7, 6]
	
	llenarAleatoriamenteMatriz(matriz, 7, 6)
	realizarInforme(matriz)
	mostrarInforme(matriz)
	
FinAlgoritmo
