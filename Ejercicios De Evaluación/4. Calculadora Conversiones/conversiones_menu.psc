Algoritmo conversiones
	// Variables para guardar los datos de entrada y resultado
	Definir dato, resultado Como Real;
	// Variable para elegir la conversión del menú
	Definir conversion Como Entero;
	// Variable para saber si el usuario quiere seguir
	Definir respuesta Como Caracter;
	
	// Inicialización de variables
	conversion<-0;
	respuesta<-"Si";
	
	Repetir
		// Menú principal
		Escribir "------ MENÚ CONVERSIONES------";
		Escribir "1. De Kilometros(Km) a Millas(mi)";
		Escribir "2. De Pulgadas(in) a Centímetros (cm)";
		Escribir "3. De Libras(lb) a Kilogramos(Kg)";
		Escribir "4. De Litros(L) a Galones (gal)";
		
		// Leer la opción del usuario
		Escribir "Ingresa la conversión que deseas realizar ";
		Leer conversion;
		
		// Según la opción, realiza la conversión
		Segun conversion Hacer
			Caso 1:
				// Km a millas
				Escribir "Ingresa los kilometros(km)";
				Leer dato;
				resultado<- dato*0.621371;
				Mostrar "La conversión de kilometros a millas es " resultado " mi";
				
			Caso 2:
				// Pulgadas a centímetros
				Escribir "Ingresa las pulgadas(in)";
				Leer dato;
				resultado<- dato*2.54;
				Mostrar "La conversión de pulgadas a centímetros es " resultado " cm";
				
			Caso 3:
				// Libras a kilogramos
				Escribir "Ingresa las libras(lb)";
				Leer dato;
				resultado<- dato*0.453592;
				Mostrar "La conversión de libras a kilogramos es " resultado " Kg";
				
			Caso 4:
				// Litros a galones
				Escribir "Ingresa los litros(L)";
				Leer dato;
				resultado<- dato/3.78541;
				Mostrar "La conversión de litros a galones es " resultado " gal";
				
			De Otro Modo:
				// Si la opción no existe
				Mostrar "Opción invalida. Por favor intentelo nuevamente";
		Fin Segun
		
		// Preguntar si quiere seguir
		Escribir "Desea hacer otra operación? (Si/No)";
		Leer respuesta;
		
		// Mensaje de salida si responde "No"
		Si respuesta="No" o respuesta="no" Entonces
			Mostrar "Saliendo del programa...";
		FinSi
	Hasta Que respuesta="No" o respuesta="no"
FinAlgoritmo
