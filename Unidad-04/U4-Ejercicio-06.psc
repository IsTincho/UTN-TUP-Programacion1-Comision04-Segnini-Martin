Proceso Ejercicio_06
	
	//6. Realice un algoritmo que lea N elementos y que imprima el número que se repite más veces dentro del arreglo.
	
	Definir n, elementos, i Como Entero;
	Definir repSi, repSave Como Entero
	Escribir "Ingrese la cantidad de elementos para el arreglo";
	Leer n;
	Dimension elementos[n+1];
	
	para i<-0 hasta n-1
		Leer elementos[i]
		repSave=elementos[i]
		Si repSave=elementos[i]
			repSi<-repSave
		FinSi
	FinPara

FinProceso
