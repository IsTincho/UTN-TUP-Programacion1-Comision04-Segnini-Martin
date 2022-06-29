Proceso sin_titulo
	
    Definir alumnos Como Caracter
    Definir cantalumnos, tipo_ordenamiento como entero
    Escribir "Ingrese cantidad alumnos"
    Leer cantalumnos
    Dimension alumnos[cantalumnos]
	Escribir "Ingrese 1 para orden ascendente y 2 para descendiente"
	Leer tipo_ordenamiento
    IngresarAlumnos(alumnos,cantalumnos)
    OrdenarAlumnos(alumnos, cantalumnos, tipo_ordenamiento)  //por nombre y apellido
    MostrarAlumnos(alumnos, cantalumnos)
	
FinProceso

SubProceso IngresarAlumnos(alumnos,cantalumnos)
    Definir i Como Entero
    Para i<-0 hasta cantalumnos-1
        Escribir "Ingrese el nombre y apellido del alumno ", i+1
        leer alumnos[i]
    FinPara
FinSubProceso

SubProceso OrdenarAlumnos(alumnos,cantalumnos, tipo_ordenamiento)
    Definir i, j, posicion Como Entero
	Definir aux Como Caracter
	
	Segun tipo_ordenamiento Hacer
		1:
			Para i<-0 hasta cantalumnos-2 Hacer
				posicion<-i
				Para j<-i+1 hasta cantalumnos-1
					Si alumnos[j]<alumnos[posicion]
						posicion<-j
					FinSi
				FinPara
				aux<-alumnos[i]
				alumnos[i]<-alumnos[posicion]
				alumnos[posicion]<-aux
			FinPara
		2:
			Para i<-0 hasta cantalumnos-2 Hacer
				posicion<-i
				Para j<-i+1 hasta cantalumnos-1
					Si alumnos[j]>alumnos[posicion]
						posicion<-j
					FinSi
				FinPara
				aux<-alumnos[i]
				alumnos[i]<-alumnos[posicion]
				alumnos[posicion]<-aux
			FinPara
		De Otro Modo:
			Escribir "Tipo no valido"
	Fin Segun
	

	
FinSubProceso

SubProceso MostrarAlumnos(alumnos,cantalumnos)
    Definir i Como Entero
	Para i<-0 hasta cantalumnos-1
		Escribir "Alumno: ", alumnos[i]
	FinPara
FinSubProceso