Proceso Ejercicio_01
	//1- Crear un subproceso que devuelva la longitud de una cadena.
	Definir cadenaLeer Como Caracter
	Definir miCadena Como Caracter
	devolverLong(miCadena)
FinProceso

SubProceso devolverLong(miCadena)
	
	Definir cadenaLeer Como Caracter
	Escribir "ingrese una cadena de texto"
	Leer cadenaLeer
	Mostrar "La longitud de nuestra cadena es: ", Longitud(cadenaLeer)
	
FinSubProceso
	