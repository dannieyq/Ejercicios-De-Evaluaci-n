Algoritmo conversiones
	// Variables para guardar los datos de entrada y resultado
	Definir dato, resultado Como Real;
	// Variable para elegir la conversi�n del men�
	Definir conversion Como Entero;
	// Variable para saber si el usuario quiere seguir
	Definir respuesta Como Caracter;
	
	// Inicializaci�n de variables
	conversion<-0;
	respuesta<-"Si";
	
	Repetir
		// Men� principal
		Escribir "------ MEN� CONVERSIONES------";
		Escribir "1. De Kilometros(Km) a Millas(mi)";
		Escribir "2. De Pulgadas(in) a Cent�metros (cm)";
		Escribir "3. De Libras(lb) a Kilogramos(Kg)";
		Escribir "4. De Litros(L) a Galones (gal)";
		
		// Leer la opci�n del usuario
		Escribir "Ingresa la conversi�n que deseas realizar ";
		Leer conversion;
		
		// Seg�n la opci�n, realiza la conversi�n
		Segun conversion Hacer
			Caso 1:
				// Km a millas
				Escribir "Ingresa los kilometros(km)";
				Leer dato;
				resultado<- dato*0.621371;
				Mostrar "La conversi�n de kilometros a millas es " resultado " mi";
				
			Caso 2:
				// Pulgadas a cent�metros
				Escribir "Ingresa las pulgadas(in)";
				Leer dato;
				resultado<- dato*2.54;
				Mostrar "La conversi�n de pulgadas a cent�metros es " resultado " cm";
				
			Caso 3:
				// Libras a kilogramos
				Escribir "Ingresa las libras(lb)";
				Leer dato;
				resultado<- dato*0.453592;
				Mostrar "La conversi�n de libras a kilogramos es " resultado " Kg";
				
			Caso 4:
				// Litros a galones
				Escribir "Ingresa los litros(L)";
				Leer dato;
				resultado<- dato/3.78541;
				Mostrar "La conversi�n de litros a galones es " resultado " gal";
				
			De Otro Modo:
				// Si la opci�n no existe
				Mostrar "Opci�n invalida. Por favor intentelo nuevamente";
		Fin Segun
		
		// Preguntar si quiere seguir
		Escribir "Desea hacer otra operaci�n? (Si/No)";
		Leer respuesta;
		
		// Mensaje de salida si responde "No"
		Si respuesta="No" o respuesta="no" Entonces
			Mostrar "Saliendo del programa...";
		FinSi
	Hasta Que respuesta="No" o respuesta="no"
FinAlgoritmo
