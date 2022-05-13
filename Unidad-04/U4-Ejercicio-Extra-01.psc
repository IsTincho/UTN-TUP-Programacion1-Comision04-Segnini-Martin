Proceso Extra_01
	
	Definir arreglo, num, val Como Entero
	Escribir "Ingrese la cantidad de numeros para el arreglo"
	Leer num
	Dimension arreglo[num,2]
	
	Para i<-0 Hasta num-1
		Para j<-0 hasta num-1
			Leer arreglo[i,1]
			arreglo[i,2]<-arreglo[i,1]
		FinPara
	FinPara
	
FinProceso
