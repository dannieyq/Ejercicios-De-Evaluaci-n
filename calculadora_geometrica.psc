Algoritmo calculadora
	
	// Declaración de variables
	Definir base, altura, radio, resultado Como Real;
	Definir operacion, figura Como Entero;
	Definir respuesta Como Caracter;
	
	// Bucle principal: permite que el programa se repita hasta que el usuario decida salir
	Repetir
		// Submenú para elegir entre área o volumen que repite hasta que el usuario ingrese 1 o 2
		Repetir
			Escribir "CALCULADORA GEOMETRICA";
			Escribir "Escoge que deseas hallar área o volumen";
			Escribir "1. Área";
			Escribir "2. Volumen";
			Leer operacion;
		Hasta Que operacion=1 o operacion=2
		
		// Si la opción elegida es área
		Si operacion=1 Entonces
			Escribir "------ MENÚ DE FIGURAS ------";
			Escribir "1. Triángulo";
			Escribir "2. Rectángulo";
			Escribir "3. Círculo";
			Escribir "Ingresa el número de la figura para hallar el área";
			Leer figura;
			
			// Área del triángulo
			Si figura=1 Entonces
				Escribir "Digite la base del triángulo";
				Leer base;
				Escribir "Digite la altura del triángulo";
				Leer altura;
				resultado=(base* altura)/ 2;
				Mostrar "El área del triángulo es ", resultado;
				
			Sino 
				// Área del rectángulo
				Si figura=2 Entonces 
					Escribir "Digite la base del rectángulo";
					Leer base;
					Escribir "Digite la altura del rectángulo";
					Leer altura;
					resultado= base * altura;
					Mostrar "El área del rectángulo es de ",resultado;
					
				Sino 
					// Área del círculo
					Si figura=3 Entonces
						Escribir "Digite el radio del círculo";
						Leer radio;
						resultado<- PI*(radio*radio);
						Mostrar "El área del círculo es ", resultado;
					FinSi
				FinSi
			FinSi
			
		Sino 
			// Si la opción elegida es volumen
			Si operacion=2 Entonces
				Escribir "Has escogido volumen";
				Escribir "------ MENÚ DE FIGURAS ------";
				Escribir "1. Esfera";
				Escribir "2. Cilindro";
				Escribir "3. Cono";
				Escribir "Ingresa el número de la figura para hallar el volumen";
				Leer figura;
				
				// Volumen de la esfera
				Si figura=1 Entonces
					Escribir "Digite el radio de la esfera";
					Leer radio;
					resultado<-(4/3)*PI*(radio^3);
					Mostrar "El volumen de la esfera es ", resultado;
					
				Sino 
					// Volumen del cilindro
					Si figura=2 Entonces 
						Escribir "Digite la altura del cilindro";
						Leer altura;
						Escribir "Digite el radio del cilindro";
						Leer radio;
						resultado= PI*(radio^2)*altura;
						Mostrar "El volumen del cilindro es ", resultado;
						
					Sino 
						// Volumen del cono
						Si figura=3 Entonces
							Escribir "Digite el radio del cono";
							Leer radio;
							Escribir "Digite la altura del cono";
							Leer altura;
							resultado<- (1/3)*PI*(radio^2)*altura;
							Mostrar "El volumen del cono es ", resultado;
							
						Sino 
							// Si la figura no existe
							Escribir "ERROR: El número ingresado no corresponde a ninguna opción válida";
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		
		// Preguntar al usuario si desea calcular otra figura
		Escribir "Desea hallar alguna otra figura?";
		Leer respuesta;
		
		// El programa se repetirá hasta que la respuesta sea "No" o "no"
	Hasta Que respuesta="No" o respuesta="no"
FinAlgoritmo
