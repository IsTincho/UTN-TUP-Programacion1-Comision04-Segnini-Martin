Proceso Ejercicio_02
	//Crear un subproceso que devuelva el factorial de un numero

	mostrarFactorial
	
FinProceso

SubProceso mostrarFactorial
	
	Definir num,factorial Como Real
	Definir i Como Entero
	Escribir "Ingrese el numero a calcular su factorial"
	Leer num
	
	factorial<-1;
	
	Para i<-1 hasta num
		factorial<-factorial*i
	FinPara
	
	Mostrar "El factorial de ", num, " es: ", factorial
	
FinSubProceso