Proceso sin_titulo
	
	Definir nombre, apellido Como Caracter
	Definir valido Como Logico
	Definir DNI Como Caracter
	Escribir "Ingrese el nombre"
	Leer nombre
	Escribir "Ingrese el apellido"
	Leer apellido
	Escribir "Ingrese el DNI"
	ingresarDNI(DNI)
	
	Datos
	
FinProceso

SubProceso ingresarDNI(DNI)
	Definir valido Como Logico
	Leer DNI;
	Mientras (Longitud(DNI)<=8 Y Longitud(DNI)>=6)
		Escribir "El DNI se encuentra fuera de los parametros, vuelva a intentar";
		Leer DNI;
	FinMientras
	valido<-Verdadero
FinSubProceso

SubProceso Datos
	Mostrar "Nombre: ", nombre, " Apellido: ", apellido, " DNI: ", DNI
FinSubProceso
	