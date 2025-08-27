Algoritmo calculadora_operaciones
	// Definición de variables
	Definir num1, num2, resultado Como Real;  
	Definir operacion Como Entero; 
	Definir respuesta Como Caracter; // Para controlar si se repite el ciclo
	
	// Inicialización de variables
	operacion<-0;
	respuesta<-"Si";
	
	// Ciclo principal que se repite hasta que el usuario diga "No"
	Repetir
		// Mostrar menú de opciones
		Escribir "------ MENÚ CALCULADORA ------";
		Escribir "1. Suma";
		Escribir "2. Resta";
		Escribir "3. Multiplicación";
		Escribir "4. División";
		
		Escribir "Ingresa el número correspondiente a la operación que deseas realizar";
		Leer operacion; 
		
		// Validación: solo pide números si la opción es válida
		Si operacion>=1 y operacion <=4 Entonces
			Escribir "NOTA: Tiene que tener en cuenta que el primer número que ingrese es el que va antes del signo";
			Escribir "Digite el primer número";
			Leer num1;
			Escribir "Digite el segundo número"; 
			Leer num2;
		FinSi
		
		// Selección según la operación
		Segun operacion Hacer
			Caso 1:   // Suma
				resultado<-num1+num2;
				Mostrar "El resultado de la suma es " resultado;
				
			Caso 2:   // Resta
				resultado<- num1-num2;
				Mostrar "El resultado de la resta es " resultado;
				
			Caso 3:   // Multiplicación
				resultado<- num1*num2;
				Mostrar "El resultado de la multiplicación es " resultado;
				
			Caso 4:   // División
				Si num2<>0 Entonces
					resultado<-num1/num2;
					Mostrar "El resultado de la división es " resultado;
				Sino 
					Mostrar "ERROR: No se puede dividir por cero";  // Validación de división
				FinSi
				
			De Otro Modo:   // Si la opción es inválida
				Mostrar "Opción invalida. Por favor intentelo nuevamente";
		Fin Segun
		
		// Preguntar si desea continuar
		Escribir "Desea hacer otra operación? (Si/No)";
		Leer respuesta;
		
		// El ciclo termina si la respuesta es "No" o "no"
	Hasta Que respuesta="No" o respuesta="no"
	
FinAlgoritmo
