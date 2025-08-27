Algoritmo calculadora_operaciones
	// Definici�n de variables
	Definir num1, num2, resultado Como Real;  
	Definir operacion Como Entero; 
	Definir respuesta Como Caracter; // Para controlar si se repite el ciclo
	
	// Inicializaci�n de variables
	operacion<-0;
	respuesta<-"Si";
	
	// Ciclo principal que se repite hasta que el usuario diga "No"
	Repetir
		// Mostrar men� de opciones
		Escribir "------ MEN� CALCULADORA ------";
		Escribir "1. Suma";
		Escribir "2. Resta";
		Escribir "3. Multiplicaci�n";
		Escribir "4. Divisi�n";
		
		Escribir "Ingresa el n�mero correspondiente a la operaci�n que deseas realizar";
		Leer operacion; 
		
		// Validaci�n: solo pide n�meros si la opci�n es v�lida
		Si operacion>=1 y operacion <=4 Entonces
			Escribir "NOTA: Tiene que tener en cuenta que el primer n�mero que ingrese es el que va antes del signo";
			Escribir "Digite el primer n�mero";
			Leer num1;
			Escribir "Digite el segundo n�mero"; 
			Leer num2;
		FinSi
		
		// Selecci�n seg�n la operaci�n
		Segun operacion Hacer
			Caso 1:   // Suma
				resultado<-num1+num2;
				Mostrar "El resultado de la suma es " resultado;
				
			Caso 2:   // Resta
				resultado<- num1-num2;
				Mostrar "El resultado de la resta es " resultado;
				
			Caso 3:   // Multiplicaci�n
				resultado<- num1*num2;
				Mostrar "El resultado de la multiplicaci�n es " resultado;
				
			Caso 4:   // Divisi�n
				Si num2<>0 Entonces
					resultado<-num1/num2;
					Mostrar "El resultado de la divisi�n es " resultado;
				Sino 
					Mostrar "ERROR: No se puede dividir por cero";  // Validaci�n de divisi�n
				FinSi
				
			De Otro Modo:   // Si la opci�n es inv�lida
				Mostrar "Opci�n invalida. Por favor intentelo nuevamente";
		Fin Segun
		
		// Preguntar si desea continuar
		Escribir "Desea hacer otra operaci�n? (Si/No)";
		Leer respuesta;
		
		// El ciclo termina si la respuesta es "No" o "no"
	Hasta Que respuesta="No" o respuesta="no"
	
FinAlgoritmo
