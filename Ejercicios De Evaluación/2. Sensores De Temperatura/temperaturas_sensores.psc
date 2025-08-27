Algoritmo temperatura_sensores
		// Declaración de variables
		Definir temperatura, sensores, temperatura_baja, temperatura_alta, temperatura_normal, acumulado_temperatura, total_fahrenheit Como Real;
		Definir seleccion Como Caracter;
		Definir lista_sensores Como Entero;
		
		// Inicialización de contadores
		temperatura_baja<-0;
		temperatura_normal<-0;
		temperatura_alta<-0;
		
		Repetir
			// Reiniciamos el acumulador de temperaturas para cada ciclo
			acumulado_temperatura<-0;
			
			Escribir "Cuantos sensores desea monitorear?";
			Leer sensores;
			
			// Ciclo para leer las temperaturas de cada sensor
			Para lista_sensores<-1 Hasta sensores Con Paso 1 Hacer
				Escribir "Ingrese la temperatura del sensor ",lista_sensores," (0 - 100°C)";
				Leer temperatura;
				
				// Validar que la temperatura esté en el rango 0 - 100
				Si temperatura<0 o temperatura>100 Entonces
					Repetir
						Escribir "Por favor ingresar la temperatura siguiendo con el rango de 0 a 100";
						Leer temperatura;
					Hasta Que temperatura>=0 y temperatura<=100
				FinSi
				
				// Clasificación de la temperatura
				Si temperatura>=0 y temperatura<=20 Entonces
					Mostrar "El sensor detecta una temperatura muy baja";
					temperatura_baja<- temperatura_baja + 1;
				SiNo 
					Si temperatura>=80 y temperatura <=100 Entonces
						Mostrar "El sensor detecta una temperatura muy alta";
						temperatura_alta <- temperatura_alta + 1;
					Sino 
						Si  temperatura>=20 y temperatura<=80 Entonces 
							Mostrar "El sensor detecta una temperatura normal";
							temperatura_normal<-temperatura_normal +1;
						FinSi
					FinSi
				FinSi
				
				// Acumulamos la temperatura (para después convertir a °F)
				acumulado_temperatura<-acumulado_temperatura + temperatura;
			Fin Para
			
			// Menú de opciones
			Repetir
				Mostrar "---- MENU DE OPCIONES ----";
				Mostrar "1. Consultar condiciones de los sensores";
				Mostrar "2. Convertir grados celsius a fahrenheit";
				Mostrar "3. Reiniciar programa ";
				Mostrar "4. Salir del programa ";
				Escribir "Digite la opcion que corresponda a su necesidad";
				Leer seleccion;
				
				// Validación: repetir hasta que sea entre 1 y 4
				Mientras seleccion<"1" o seleccion>"4" Hacer
					Mostrar "?? El numero que ingresaste no corresponde a ninguna opcion, por favor ingresa un número válido (1-4)";
					Leer seleccion;
				FinMientras
				
				// Ejecución de la opción seleccionada
				Si seleccion="1" Entonces
					Mostrar "Hay ",temperatura_normal," sensores con temperatura normal";
					Mostrar "Hay ",temperatura_baja," sensores con temperatura baja";
					Mostrar "Hay ",temperatura_alta," sensores con temperatura alta";
				Sino 
					Si seleccion="2" Entonces
						total_fahrenheit <- (acumulado_temperatura * 9/5) + 32;
						Mostrar "La sumatoria de todos los grados C° de los sensores es: ",acumulado_temperatura,"°C";
						Mostrar "Así que la sumatoria en grados fahrenheit sería de: ",total_fahrenheit,"F°";
					Sino 
						Si seleccion="3" Entonces
							Mostrar "Reiniciando proceso...";
						Sino 
							Si seleccion="4" Entonces
								Mostrar "Muchas gracias por utilizar nuestro programa, esperamos que te haya servido";
							FinSi
						FinSi
					FinSi
				FinSi
			Hasta Que seleccion="4"   // Sale del menú si elige "4"
		Hasta Que seleccion="4"       // Sale del programa si elige "4"
	
FinAlgoritmo
