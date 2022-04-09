Proceso U3_Ejercicio_06
	
	Definir nota,acum,prom Como Real
	Definir i,c_alum Como Entero
	acum<-0
	
	Escribir "Ingrese la cantidad de alumnos del curso";
	Leer c_alum;
	
	Para i<-1 hasta c_alum con paso 1
		Escribir "Ingrese la nota del alumno nro: ", i;
		Leer nota
		Si nota<=10 y nota>=0
			acum<-acum+nota
		SiNo
			Escribir "Ha ingresado una nota invalida.";
		FinSi
	FinPara
	
	prom<-acum/c_alum
	Escribir "El promedio de las notas del parcial es igual a: ", prom;
	
FinProceso