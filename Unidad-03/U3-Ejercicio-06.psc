Proceso U3_Ejercicio_06
	
	Definir nota,acum,prom Como Real
	Definir i Como Entero
	acum<-0
	
	Para i<-1 hasta 20 con paso 1
		Escribir "Ingrese la nota del alumno nro: ", i;
		Leer nota
		acum<-acum+nota
	FinPara
	
	prom<-acum/20
	Escribir "El promedio de las notas del parcial es igual a: ", prom;
	
FinProceso