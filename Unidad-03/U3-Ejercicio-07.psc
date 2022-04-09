Proceso U3_Ejercicio_07
	
	definir num, mayor, menor, acum Como Real
	definir i,cant_n como Entero
	
	Escribir  "Ingrese la cantidad de numeros a evaluar";
	leer cant_n
	Si cant_n>=1
		Para i<-1 hasta cant_n con paso 1
			
			Escribir "Ingrese el numero: ", i
			Leer num
			acum<-num
			Si i=1
				mayor<-num
				menor<-num
			SiNo
				Si num>=0
					Si num>=acum y acum>=mayor Entonces
						mayor<-num
					Sino 
						Si num<=acum y acum<=menor
							menor<-num
						FinSi
					FinSi
				SiNo
					Escribir "Has ingresado un numero negativo";
				FinSi
				
			FinSi
			
		FinPara
		
		Escribir "El numero mas chico es: ", menor;
		Escribir "El numero mas grande es: ", mayor;
	SiNo
		Escribir "No se pueden evaluar: ", cant_n," numeros.";
		Escribir "ERROR. Cerrando... . . ..";
	FinSi
	
	
	
FinProceso
