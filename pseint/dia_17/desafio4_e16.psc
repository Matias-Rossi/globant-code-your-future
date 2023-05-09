Algoritmo desafio4_e16
	
	definir menu Como Entero
	
	Hacer
		
		Escribir ""
		Escribir "MENU"
		Escribir ""
		Escribir "1.! Calcular muro de ladrillo"
		Escribir "2.! Calcular viga de hormigón"
		Escribir "3.! Calcular columnas de hormigón"
		Escribir "4.! Calcular contrapisos"
		Escribir "5.! Calcular techo"
		Escribir "6.! Calcular pisos"
		Escribir "7.! Calcular pintura"
		Escribir "8.! Calcular iluminación"
		Escribir "9.! Salir"
		Escribir ""
		
		leer menu
		
		Segun menu hacer
			
			1: s_muro()
			2: s_viga()
			3: s_columnas()
			4: s_contrapisos()
			5: s_techo()
			6: s_pisos()
			7: s_pintura()
			8: s_iluminacion()
			9: s_salir()
			De Otro Modo: Escribir "¿?"
				
		FinSegun
		
	Mientras que menu <> 9 
	
FinAlgoritmo

//------------------------------------------------------------------------------------------------//
//------ SUBPROCESOS AUXILIARES ------------------------------------------------------------------//
//------------------------------------------------------------------------------------------------//

/// Laburar en este
SubProceso calcularVolumen()
FinSubProceso

/// Laburar en este
SubProceso calcularSuperficie()
FinSubProceso

//------------------------------------------------------------------------------------------------//
//------ SUBPROCESOS DEL MENU --------------------------------------------------------------------//
//------------------------------------------------------------------------------------------------//

/// Laburar en este
SubProceso calcularMuro()
FinSubProceso

/// Laburar en este
SubProceso calcularViga()
FinSubProceso

SubProceso s_columnas()
FinSubProceso

SubProceso s_contrapisos()
FinSubProceso

SubProceso s_techo()
FinSubProceso

SubProceso s_pisos()
FinSubProceso

SubProceso s_pintura()
FinSubProceso

SubProceso s_iluminacion()
FinSubProceso

SubProceso  s_salir()
	Escribir "Gracias, vuelva prontos!"
FinSubProceso