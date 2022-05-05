Proceso Ejercicio_04
	
	//. Escribir un algoritmo que permita ingresar 10 valores numéricos en un arreglo y que 
	//como resultado devuelva el mayor de todos los valores ingresados.
	
	Definir i Como Entero;
	Definir nums,mayor Como Real;
	Dimension nums[10];
	
	mayor<-0
	
	Para i<-0 hasta 9
		Escribir "Ingrese el numero nro: ", i+1;
		Leer nums[i];
		Si nums[i]>mayor
			mayor<-nums[i]
		FinSi
	FinPara
	
	Mostrar mayor;
	
FinProceso

