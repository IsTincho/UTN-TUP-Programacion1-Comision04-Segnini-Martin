Proceso Ejercicio_06
	
	//6. Realice un algoritmo que lea N elementos y que imprima el número que se repite más veces dentro del arreglo.
	
	Definir arreglo, cant, i,j, mayor, cantidadRep Como Entero;
	Escribir "Ingrese la cantidad de numeros del arreglo";
	Leer cant;
	
	Dimension arreglo[cant,2];
	cantidadRep<-1;
	
	//Leer los valores para cada posicion y tambien guardarlas en el segundo espacio
	Para i<-0 hasta cant-1
		Escribir "Ingrese el numero en la posicion : ", i+1;
		Leer arreglo[i,0];
		arreglo[i,1]<-1;
	FinPara
	
	//Comparar si se repiten los numeros, de ser asi guardar un incremento en la cantidad en el segundo espacio
	Para i<-0 hasta cant-1
		Para j=i+1 hasta cant-1
			
			Si arreglo[i,0]=arreglo[j,0]
				
				arreglo[i,1]<-arreglo[i,1]+1;
				
			FinSi
		FinPara
		Si cantidadRep<arreglo[i,1]
			cantidadRep=arreglo[i,1]; //Nos fijamos cuantas veces se repiten
		FinSi
	FinPara
	//Buscamos y mostramos los valores repetidos con su cantidad de veces
	Escribir "Los siguientes numeros son los que mas se repiten, en un total de: ", cantidadRep, " veces. cada uno";
	Para i<-0 hasta cant-1
		Si arreglo[i,1]=cantidadRep
			Mostrar arreglo[i,0];
		FinSi
	FinPara
	
	
FinProceso
