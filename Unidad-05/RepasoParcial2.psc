Proceso sin_titulo
	
    Definir dni_alumnos Como Caracter
    Definir cantalumnos como entero
    Escribir "Ingrese cantidad alumnos"
    Leer cantalumnos
    Dimension dni_alumnos[cantalumnos]
    IngresarAlumnos(dni_alumnos,cantalumnos)
    BuscarAlumno(dni_alumnos, cantalumnos)
	
FinProceso

SubProceso IngresarAlumnos(dni_alumnos,cantalumnos)
    Definir i Como Entero
    Definir dni Como Caracter
	
    Para i<-0 hasta cantalumnos -1
        Escribir "Ingrese el DNI del alumno ", i+1
        leer dni_alumnos[i]
    FinPara
FinSubProceso

SubProceso BuscarAlumno(dni_alumnos,cantalumnos)
    //BUSCAR POR METODO DICOTOMICO SI SE ENCUENTRA MOSTRAR QUE SE ENCONTRÓ EN TAL POSICION, SINO MOSTRAR QUE NO SE ENCONTRÓ
	Definir i, centro, inferior, superior Como Entero
	Definir encontrado Como Logico
	Definir  buscar Como Caracter
	
	inferior<-0
	superior<-cantalumnos-1
	encontrado<-Falso
	
	Escribir "Ingrese el DNI a buscar"
	Leer buscar 
	
	Repetir
		centro<-trunc((inferior+superior)/2)
		Si dni_alumnos[centro]=buscar
			Mostrar "El DNI fue encontrado en la posicion: ", centro+1
			encontrado=Verdadero
		SiNo
			Si dni_alumnos[centro]<buscar
				inferior<-centro+1
			SiNo
				inferior<-centro-1
			FinSi
		FinSi
		Si inferior>superior
			Mostrar "DNI no encontrado."
		FinSi
	Mientras que !encontrado y inferior<=superior
FinSubProceso
