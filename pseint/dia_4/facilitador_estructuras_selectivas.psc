//Escriba un programa en donde se le pregunte al estudiante si el día de hoy le toca ser el
//facilitador de tu equipo. En caso de que sea, que muestre por pantalla el siguiente mensaje:
//	"¡Felicidades! Eres el facilitador de tu equipo."

Algoritmo facilitador_estructuras_selectivas
	Definir respuesta Como Caracter
	
	Escribir "¿El día de hoy eres el facilitador de tu equipo? (SI/NO)"
	Leer respuesta
	
	Si respuesta == "SI" Entonces
		Escribir "¡Felicidades! Eres el facilitador de tu equipo"
	SiNo
		Escribir "Siga participando"
	FinSi
	
FinAlgoritmo
