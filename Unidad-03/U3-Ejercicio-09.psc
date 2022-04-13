Proceso U3_Ejercicio_06
	
	Definir nota,acum,prom Como Real
	Definir i,c_alum,p,cParcial Como Entero
	Definir rep Como Logico
	acum<-0
	cParcial<-1
	rep<-Verdadero
	
	Escribir "Ingrese la cantidad de alumnos del curso";
	Leer c_alum;
	
	Repetir
		Escribir "Vamos a ingresar las notas del parcial nro: ", cParcial;
			
			Para i<-1 hasta c_alum con paso 1
			Repetir
				Escribir "Ingrese la nota del alumno nro: ", i;
				Leer nota
				Si nota<=10 y nota>=0
					acum<-acum+nota
				SiNo
					Escribir "Ha ingresado una nota invalida.";
					Escribir "Vuelva a intentar";
				FinSi
			Mientras Que nota<0 o nota>10
		FinPara
		
		prom<-acum/c_alum
		Escribir "El promedio de las notas del parcial nro ", cParcial, " es igual a: ", prom;
		
		Escribir "Si desea ingresar las notas de otro parcial, presione 1.";
		Leer p
		Si p<>1
			rep<-Falso
		SiNo
			rep<-Verdadero
		FinSi
		
		cParcial<-cParcial+1
		prom<-0
		acum<-0
	Mientras Que rep=Verdadero
	
	
FinProceso