Proceso U3_Ejercicio_04
	//el Factorial de un numero es la multiplicacion 
	//de todos los numeros anteriores al mismo (incluido este mismo)
	
	Definir num, factorial Como entero;
	//Definir cont Como Entero;
	//cont <-1;
	Definir i Como Entero
	factorial<-1;
	Escribir "Ingrese un numero:";
	Leer num
	//Mientras cont<=num 
	//	factorial<-factorial*cont;
	//	cont<-cont+1;
	//FinMientras
	Para i<-1 hasta num con paso 1
		factorial<-factorial*i;
	FinPara
	Escribir "El factorial de ", num, " es igual a: " factorial;
	
FinProceso
