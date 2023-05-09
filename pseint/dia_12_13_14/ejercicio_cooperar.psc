Algoritmo ejercicio_cooperar
	Definir t_1, t_2 Como Caracter
	t_1 = "Cooperando "
	t_2 = "trabajamos mejor"
	
	Escribir Cooperar(t_1, t_2)
	
FinAlgoritmo

Funcion textoConcatenado <- Cooperar(texto_1, texto_2)
	Definir textoConcatenado Como Caracter
	textoConcatenado = concatenar(texto_1, texto_2)
FinFuncion

// Detección de errores

Funcion retorno <- Paridad (num)
	retorno = num MOD 2 == 0
FinFuncion

