//	Funci�n prisioneroDulce(): Estamos en caramelolandia, donde estan los peores ladrones de dulces. 
//	Una vez al mes, se sienta una n cantidad de presos en ronda, contemplando al preso que inicia la ronda, 
//	como el preso 0. A los presos se les da una m cantidad de caramelos, estos caramelos se repartir�n de uno 
//	en uno a cada preso, contemplando que se comenzaran a repartir los caramelos desde el primer preso (inicio). 
//	Se repartir�n los caramelos hasta que no queden m�s y el ultimo caramelo en repartirse estar� podrido, 
//	determinar a que preso, seg�n su posici�n en la ronda le tocara el caramelo podrido.

/// Subalgoritmos de ejercicios anteriores
// [Vac�o]

/// Subalgoritmos nuevos
Funcion posCarameloPodrido <- CalcularPosicionCarameloPodrido(cantPresos, cantCaramelos)
	Definir posCarameloPodrido Como Entero
	posCarameloPodrido = (cantCaramelos MOD cantPresos) - 1
FinFuncion

/// Algoritmo principal
Algoritmo extra_extra_4
	Definir cantPresos, cantCaramelos, posCarameloPodrido Como Entero 
	
	Escribir "Ingrese la cantidad de presos: "
	Leer cantPresos
	
	Escribir "Ingrese la cantidad de caramelos: "
	Leer cantCaramelos
	
	posCarameloPodrido = CalcularPosicionCarameloPodrido(cantPresos, cantCaramelos)
	
	Escribir "Al preso en la posici�n ", posCarameloPodrido, " le toca el caramelo podrido."
	
FinAlgoritmo
