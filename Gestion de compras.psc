Algoritmo Carrito_compra
	//Definimos las variables que vamos a utilizar
	Definir inventario ,resta_uno,resta_dos,resta_tres,resta_cuatro , cantidad_uno,cantidad_dos,cantidad_tres,cantidad_cuatro , compra , metodo como entero
	Definir respuesta ,nombre_producto_uno,nombre_producto_dos,nombre_producto_tres,nombre_producto_cuatro,error Como Caracter
	Definir precio_individual_uno,precio_individual_dos,precio_individual_tres,precio_individual_cuatro ,total_general_sin_iva,total_con_iva ,descuento Como Real
	
	//abrimos un buble repetir para al final del codigo , preguntar al usuario si le gustaria hacer otra compra en diferente factura
	Repetir
		error<-"no"
		//solicitamos al usuario la cantidad de productos diferentes que quiere vender y la almacenamos en la variable "Inventario" que funcionara como variable de control para el bucle segun
		Escribir "Ingrese el numero de productos que desea vender (Max.4)";
		Leer inventario
		Segun inventario Hacer
			//segun el valor almacenado en la variable "inventario" , el codigo seguira un camino distinto
			1:
				Escribir "Ingrese el nombre del producto 1 ";
				leer nombre_producto_uno;
				Escribir "Ingrese el precio individual del producto 1 ";
				leer precio_individual_uno;
				Escribir "Ingrese la cantidad disponible del producto 1 ";
				leer cantidad_uno;
			2:
				Escribir "Ingrese el nombre del producto 1";
				leer nombre_producto_uno;
				Escribir "Ingrese el precio individual del producto 1";
				leer precio_individual_uno;
				Escribir "Ingrese la cantidad disponible del producto 1"
				leer cantidad_uno
				Escribir "Ingrese el nombre del producto 2";
				leer nombre_producto_dos;
				Escribir "Ingrese el precio individual del producto 2";
				leer precio_individual_dos;
				Escribir "Ingrese la cantidad disponible del producto 2";
				leer cantidad_dos;
			3:
				Escribir "Ingrese el nombre del producto 1";
				leer nombre_producto_uno;
				Escribir "Ingrese el precio individual del producto 1";
				leer precio_individual_uno;
				Escribir "Ingrese la cantidad disponible del producto 1"
				leer cantidad_uno
				Escribir "Ingrese el nombre del producto 2";
				leer nombre_producto_dos;
				Escribir "Ingrese el precio individual del producto 2";
				leer precio_individual_dos;
				Escribir "Ingrese la cantidad disponible del producto 2";
				leer cantidad_dos;
				Escribir "Ingrese el nombre del producto 3";
				leer nombre_producto_tres;
				Escribir "Ingrese el precio individual del producto 3";
				leer precio_individual_tres;
				Escribir "Ingrese la cantidad disponible del producto 3";
				leer cantidad_tres;
			4:	
				Escribir "Ingrese el nombre del producto 1";
				leer nombre_producto_uno;
				Escribir "Ingrese el precio individual del producto 1";
				leer precio_individual_uno;
				Escribir "Ingrese la cantidad disponible del producto 1"
				leer cantidad_uno
				Escribir "Ingrese el nombre del producto 2";
				leer nombre_producto_dos;
				Escribir "Ingrese el precio individual del producto 2";
				leer precio_individual_dos;
				Escribir "Ingrese la cantidad disponible del producto 2";
				leer cantidad_dos;
				Escribir "Ingrese el nombre del producto del producto 3";
				leer nombre_producto_tres;
				Escribir "Ingrese el precio individual del producto 3";
				leer precio_individual_tres;
				Escribir "Ingrese la cantidad disponible del producto 3";
				leer cantidad_tres;
				Escribir "Ingrese el nombre del producto del producto 4";
				leer nombre_producto_cuatro;
				Escribir "Ingrese el precio individual del producto 4";
				leer precio_individual_cuatro;
				Escribir "Ingrese la cantidad disponible del producto 4";
				leer cantidad_cuatro;
			De Otro Modo:
				Mostrar "El numero de productos que desea ingresar supera la capacidad maxima (Max.4) ";
				error<-"si";
		Fin Segun;
	Hasta Que error="no";
	Repetir
		
		//Estas variables deben definirse con valor 0 desde aqui para que cuando el codigo se repita para realizar la segunda factura , no tome los valores de la primera factura
	resta_uno<-0;
	resta_dos<-0;
	resta_tres<-0;
	resta_cuatro<-0;
	
    Repetir
		respuesta<-"si"
		Mostrar "PRODUCTO--------------------PRECIO------------DISPONIBLES";
		Mostrar "1.",nombre_producto_uno ,"-------------------","$",precio_individual_uno,"-------------" ,cantidad_uno;
		Mostrar "2.",nombre_producto_dos ,"-------------------","$",precio_individual_dos,"-------------" ,cantidad_dos;
		Mostrar "3.",nombre_producto_tres ,"-------------------","$",precio_individual_tres,"-------------" ,cantidad_tres;
		Mostrar "4.",nombre_producto_cuatro ,"-------------------","$",precio_individual_cuatro,"-------------" ,cantidad_cuatro;
		//Le preguntamos al usuario que productos desea comprar y dependiendo su respuesta , la variable"compra tendra un valor diferente por lo que tomara distintos caminos
		Escribir "Ingrese el numero del producto desea comprar";
		Leer compra
		Segun compra Hacer
			1:
				Mostrar "Has seleccionado ",nombre_producto_uno;
				Escribir "Cuantos desea comprar?(Max.",cantidad_uno,")";
				Leer resta_uno;
				cantidad_uno<-cantidad_uno-resta_uno;
				Mostrar " has añadido a tu carrito ",nombre_producto_uno " X ",resta_uno;
				Escribir "Desea agregar otro producto al carrito?";
				Leer respuesta;
				
			2:
				Mostrar "Has seleccionado ",nombre_producto_dos;
				Escribir "Cuantos desea comprar?(Max.",cantidad_dos,")";
				Leer resta_dos;
				cantidad_dos<-cantidad_dos-resta_dos;	
				Mostrar " has añadido a tu carrito ",nombre_producto_dos " X ",resta_dos;
				Escribir "Desea agregar otro producto al carrito?";
				Leer respuesta;
				
		    3:
				Mostrar "Has seleccionado ",nombre_producto_tres;
				Escribir "Cuantos desea comprar?(Max.",cantidad_tres,")";
				Leer resta_tres;
				cantidad_tres<-cantidad_tres-resta_tres;
				Mostrar " has añadido a tu carrito ",nombre_producto_tres " X ",resta_tres;
				Escribir "Desea agregar otro producto al carrito?";
				Leer respuesta;
				
			4:	
				Mostrar "Has seleccionado ",nombre_producto_cuatro;
				Escribir "Cuantos desea comprar?(Max.",cantidad_cuatro,")";
				Leer resta_cuatro;
				cantidad_cuatro<-cantidad_cuatro-resta_cuatro;
				Mostrar " has añadido a tu carrito ",nombre_producto_cuatro " X ",resta_cuatro;
				Escribir "Desea agregar otro producto al carrito?";
				Leer respuesta;
				
			De Otro Modo:
				Mostrar "La opcion que elegiste no existe , intente con otra";
				respuesta<-"si";
				//si el usuario escribe una opcion no valida , el ciclo se repite pidiendo nuevamente que ingrese una opcion valida
		Fin Segun
		
	Hasta Que respuesta="no" o respuesta="No";
	//Aqui establecemos las operaciones para hallar el subtotal , total con iva etc
	total_uno<-resta_uno * precio_individual_uno;
	total_dos<-resta_dos * precio_individual_dos;
	total_tres<-resta_tres * precio_individual_tres;
	total_cuatro<-resta_cuatro * precio_individual_cuatro;
	total_general_sin_iva<- total_uno + total_dos + total_tres + total_cuatro;
	total_con_iva= (total_general_sin_iva * 1.19)																										
	
	Repetir
		//aqui le preguntamos al usuario que metodo de pago prefiere utilizar, y dependiendo de su respuesta se le aplica un descuento diferente
		respuesta<-"no";	
		
		Mostrar "METODO DE PAGO ----------------- DESCUENTO";
		Mostrar "1.Efectivo --------------------- 10%";
		Mostrar "2.Tarjeta ---------------------- 5%";
		Mostrar "3.Transferencia ---------------- no aplica";
		Escribir "Seleccione el metodo de pago de su preferencia";
		Leer metodo;
		Segun metodo Hacer
			1:
				descuento<-0.90
			2:
				descuento<-0.95
			3:
				descuento<-0
			De Otro Modo:
				Mostrar "La opcion que elegiste no existe , intente con otra";
				respuesta<-"si";
				//si el usuario elige una opcion no valida, el bucle se repite junto con la pregunta
		Fin Segun
	Hasta Que respuesta="no";
	total_con_iva_y_descuento<- total_con_iva * descuento
	//Mostramos la factura final
		Mostrar "FACTURA";
		Mostrar "El subtotal es de : $ ",total_general_sin_iva;
		Mostrar "El total con iva es de :$ ",total_con_iva;
		Mostrar "El total con iva y descuento es de : $ ",total_con_iva_y_descuento;
		//preguntamos al usuario si le gustaria crear otra factura
		Escribir "Desea crear otra factura?";
		Leer respuesta
		Hasta Que respuesta="no";
Mostrar "Gracias por comprr, vuelva pronto";
FinAlgoritmo
