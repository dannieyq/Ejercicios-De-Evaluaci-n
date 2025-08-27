Algoritmo calculadora
	
	// Declaraci�n de variables
	Definir base, altura, radio, resultado Como Real;
	Definir operacion, figura Como Entero;
	Definir respuesta Como Caracter;
	
	// Bucle principal: permite que el programa se repita hasta que el usuario decida salir
	Repetir
		// Submen� para elegir entre �rea o volumen que repite hasta que el usuario ingrese 1 o 2
		Repetir
			Escribir "CALCULADORA GEOMETRICA";
			Escribir "Escoge que deseas hallar �rea o volumen";
			Escribir "1. �rea";
			Escribir "2. Volumen";
			Leer operacion;
		Hasta Que operacion=1 o operacion=2
		
		// Si la opci�n elegida es �rea
		Si operacion=1 Entonces
			Escribir "------ MEN� DE FIGURAS ------";
			Escribir "1. Tri�ngulo";
			Escribir "2. Rect�ngulo";
			Escribir "3. C�rculo";
			Escribir "Ingresa el n�mero de la figura para hallar el �rea";
			Leer figura;
			
			// �rea del tri�ngulo
			Si figura=1 Entonces
				Escribir "Digite la base del tri�ngulo";
				Leer base;
				Escribir "Digite la altura del tri�ngulo";
				Leer altura;
				resultado=(base* altura)/ 2;
				Mostrar "El �rea del tri�ngulo es ", resultado;
				
			Sino 
				// �rea del rect�ngulo
				Si figura=2 Entonces 
					Escribir "Digite la base del rect�ngulo";
					Leer base;
					Escribir "Digite la altura del rect�ngulo";
					Leer altura;
					resultado= base * altura;
					Mostrar "El �rea del rect�ngulo es de ",resultado;
					
				Sino 
					// �rea del c�rculo
					Si figura=3 Entonces
						Escribir "Digite el radio del c�rculo";
						Leer radio;
						resultado<- PI*(radio*radio);
						Mostrar "El �rea del c�rculo es ", resultado;
					FinSi
				FinSi
			FinSi
			
		Sino 
			// Si la opci�n elegida es volumen
			Si operacion=2 Entonces
				Escribir "Has escogido volumen";
				Escribir "------ MEN� DE FIGURAS ------";
				Escribir "1. Esfera";
				Escribir "2. Cilindro";
				Escribir "3. Cono";
				Escribir "Ingresa el n�mero de la figura para hallar el volumen";
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
							Escribir "ERROR: El n�mero ingresado no corresponde a ninguna opci�n v�lida";
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
		
		// Preguntar al usuario si desea calcular otra figura
		Escribir "Desea hallar alguna otra figura?";
		Leer respuesta;
		
		// El programa se repetir� hasta que la respuesta sea "No" o "no"
	Hasta Que respuesta="No" o respuesta="no"
FinAlgoritmo
