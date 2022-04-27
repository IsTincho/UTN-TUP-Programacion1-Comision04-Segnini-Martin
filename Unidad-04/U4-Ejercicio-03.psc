Proceso Ejercicio_03
	
	Definir i Como Entero;
	Definir nums,sum Como Real;
	Dimension nums[5];
	
	sum<-0
	
	Para i<-0 hasta 4
		Escribir "Ingrese el numero nro: ", i+1;
		Leer nums[i];
		sum<-sum+nums[i];
	FinPara
	
	Mostrar "La suma de los numeros ingresados es igual a: ", sum;
	
FinProceso
