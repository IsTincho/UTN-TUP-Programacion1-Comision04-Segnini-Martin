Proceso U3_Ejercicio_06
	
	Definir nota,acum,prom Como Real
	Definir i,c_alum,cAprob,cDes Como Entero
	acum<-0;
	cAprob<-0;
	cDes<-0;
	
	Escribir "Ingrese la cantidad de alumnos del curso";
	Leer c_alum;
	
	Para i<-1 hasta c_alum con paso 1
		Escribir "Ingrese la nota del alumno nro: ", i;
		Leer nota
		Si nota<=10 y nota>=0
			acum<-acum+nota
			Si(nota>=6)
				cAprob<-cAprob+1;
			SiNo
				Si(nota<6 y nota>=0)
					cDes<-cDes+1;
				FinSi
			FinSi
		SiNo
			Escribir "Ha ingresado una nota invalida.";
		FinSi
	FinPara
	
	prom<-acum/c_alum
	Escribir "El promedio de las notas del parcial es igual a: ", prom;
	Escribir "En el curso hay un total de: ", cAprob, " aprobados y ", cDes, " desaprobados.";
	
FinProceso