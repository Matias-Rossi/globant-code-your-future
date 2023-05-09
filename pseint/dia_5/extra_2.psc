// Una tienda ofrece para los meses de septiembre, octubre y noviembre un descuento del
// 10% sobre el total de la compra que realiza un cliente. Solicitar al usuario que ingrese un
// mes y el importe de la compra. El programa debe calcular cuál es el monto total que se
// debe cobrar al cliente e imprimirlo por pantalla.

Algoritmo extra_2
	//Definición de variables
	Definir mes Como Caracter
	Definir importe Como Real
	Definir aplicaDescuento Como Logico
	
	//Ingreso de datos
	Escribir "Ingrese el mes de la compra en minúsculas: "
	Leer mes
	
	Escribir "Ingrese el importe de la compra sin símbolo $: "
	Leer importe
	
	//Procesamiento
	aplicaDescuento = (mes == "septiembre") O (mes == "octubre") O (mes == "noviembre")
	
	Si aplicaDescuento Entonces
		importe = importe * 0.9
	FinSi
	//Si no, el importe es el mismo
	
	//Salida
	Escribir "El importe final es $", importe
	
FinAlgoritmo
