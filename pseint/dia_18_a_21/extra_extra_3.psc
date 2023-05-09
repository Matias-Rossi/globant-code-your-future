// 3. Queremos realizar una encuesta a 6 personas, en esta encuesta indicaremos: 
//			- El sexo 1= masculino, 2=femenino 
//			- Si trabaja 1=si trabaja 2=no trabaja
//			- Su sueldo (que estará entre 600 y 2000, valor entero, siempre y cuando trabaje sino es 0)
//	  Calcule y muestre: 
//			a) Porcentaje de hombres / porcentaje de mujeres 
//			b) Porcentaje de hombres que trabajan / porcentaje de mujeres que trabajan 
//			c) Sueldo promedio de los hombres que trabajan / sueldo promedio de las mujeres q trabajan 

// Nota: Me limito a resolverlo usando solo vectores sin matrices
// Hay una repetición gigante de lógica, se podrían haber usado 
// menos funciones pero sería un choclo gigante.

/// Subalgoritmos de ejercicios anteriores
/// Subalgoritmos nuevos
SubProceso LlenarEncuesta(sexo, trabajo, sueldo, cantEncuestas)
	Definir i Como Entero
	Para i=0 hasta cantEncuestas-1
		Escribir "### Encuestado ", i+1, " ###"
		Escribir "Ingrese su sexo (1 = Masculino; 2 = Femenino):"
		Leer sexo[i]
		Escribir "¿Tiene trabajo? (1 = Sí; 2 = No):"
		Leer trabajo[i]
		Escribir "Ingrese su sueldo promedio (o 0 si contestó que no trabaja):"
		Leer sueldo[i]
	FinPara
FinSubProceso

Funcion cantHombres <- ObtenerCantidadHombres(sexo, cantEncuestas)
	Definir cantHombres, i Como Entero
	cantHombres = 0
	
	Para i=0 Hasta cantEncuestas-1 Hacer
		Si sexo[i] == 1 Entonces
			cantHombres = cantHombres + 1
		FinSi
	FinPara

FinSubProceso

SubProceso ObtenerTrabajadoresPorSexo(sexo, trabajo, cantEncuestas, cantHombresConTrabajo Por Referencia, cantMujeresConTrabajo Por Referencia)
	Definir cantSexoBuscado, i Como Entero
	cantHombresConTrabajo = 0
	cantMujeresConTrabajo = 0
	
	Para i=0 Hasta cantEncuestas-1 Hacer
		Si trabajo[i] == 1 Entonces
			Si sexo[i] == 1 Entonces
				cantHombresConTrabajo = cantHombresConTrabajo + 1
			SiNo
				cantMujeresConTrabajo = cantMujeresConTrabajo + 1
			FinSi
		FinSi
	FinPara

FinSubProceso

SubProceso CalcularSumaSueldoPorSexo(sexo, sueldo, cantEncuestas, sumaSueldoHombres Por Referencia, sumaSueldoMujeres Por Referencia)
	Definir i Como Entero
	sumaSueldoHombres = 0 
	sumaSueldoMujeres = 0
	
	Para i=0 Hasta cantEncuestas-1 Hacer
		Si sexo[i] == 1 Entonces
			sumaSueldoHombres = sumaSueldoHombres + sueldo[i]
		SiNo
			sumaSueldoMujeres = sumaSueldoMujeres + sueldo[i]
		FinSi
	FinPara
FinSubProceso

/// Algoritmo principal
Algoritmo extra_extra_3
	Definir sexo, trabajo, sueldo, cantHombres, cantMujeres, cantEncuestas, cantHombresConTrabajo, cantMujeresConTrabajo Como Entero
	Definir porcentajeHombres, porcentajeMujeres, porcentajeHombresConTrabajo, porcentajeMujeresConTrabajo, sumaSueldoHombres, sumaSueldoMujeres Como Real
	cantEncuestas = 6
	Dimension sexo[cantEncuestas], trabajo[cantEncuestas], sueldo[cantEncuestas]
	
	LlenarEncuesta(sexo, trabajo, sueldo, cantEncuestas)
	
	cantHombres = ObtenerCantidadHombres(sexo, cantEncuestas)
	cantMujeres = cantEncuestas - cantHombres
	Escribir "Porcentaje de hombres: ", cantHombres/cantEncuestas, "%; Porcentaje de mujeres: ", cantMujeres/cantEncuestas , "%"
	
	ObtenerTrabajadoresPorSexo(sexo, trabajo, cantEncuestas, cantHombresConTrabajo, cantMujeresConTrabajo)
	porcentajeHombresConTrabajo = cantHombresConTrabajo / cantHombres
	porcentajeMujeresConTrabajo = cantMujeresConTrabajo / cantMujeres
	Escribir "Porcentaje de hombres con trabajo: ", porcentajeHombresConTrabajo, "%"
	Escribir "Porcentaje de mujeres con trabajo: ", porcentajeMujeresConTrabajo, "%"
	
	CalcularSumaSueldoPorSexo(sexo, sueldo, cantEncuestas, sumaSueldoHombres, sumaSueldoMujeres)
	Escribir "Sueldo promedio de hombres: $", sumaSueldoHombres/cantHombresConTrabajo
	Escribir "Sueldo promedio de mujeres: $", sumaSueldoMujeres/cantMujeresConTrabajo
FinAlgoritmo
