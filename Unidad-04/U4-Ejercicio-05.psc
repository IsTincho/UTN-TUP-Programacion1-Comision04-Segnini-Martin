Proceso Ejercicio_05
	
	//5. Realice un algoritmo que lea en un arreglo las marcas obtenidas por 10 corredores en una carrera e imprimir cuántos tienen una
	//marca mayor, cuántos tienen una marca menor que el promedio y el promedio.
	
	Definir marcas,mayor,menor,i Como Entero;
	Definir cmayor,cmenor Como Entero
	Definir promedio Como Real;
	Dimension marcas[10];
	promedio<-0;
	mayor<-0;
	menor<-0;
	
	para i<-0 hasta 9
		Leer marcas[i];
		promedio<-promedio+marcas[i];
	FinPara
	
	promedio<-promedio/10;
	
	para i<-0 hasta 9
		Si marcas[i]>promedio
			cmayor<-cmayor+1;
		SiNo
			cmenor<-cmenor+1;
		FinSi
	FinPara
	
	
	Escribir "El promedio de corredores tienen una marca de: ", promedio;
	Escribir "Hay ", cmayor, " corredores con marca mayor al promedio y ", cmenor " corredores con marcas menor al promedio";
	
FinProceso
