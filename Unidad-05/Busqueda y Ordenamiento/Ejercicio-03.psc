Proceso Ejercicio_03
	
	Definir i,j, tamanio Como Entero
	Definir posicion, dim Como Entero
	Definir dni, personas, aux Como Caracter
	Definir encontrado Como Logico
	Definir eleccion Como Entero
	Dimension personas[8,5]
	
	CargaDatos(personas)
	
	Escribir "Elija una opcion: "
	Escribir "1- Ingresar DNI y cargar datos"
	Escribir "2- Mostrar datos ordenados por apellido"
	
	Leer eleccion
	
	Segun eleccion Hacer
		1:
			encontrado=Falso
			Escribir "Ingrese el dni de la persona a buscar"
			Leer dni
			
			i = 0;
			Mientras i <= 7 y !encontrado Hacer
				Si personas[i,2] = dni Entonces
					encontrado=Verdadero
					posicion=i
				SiNo
					i = i + 1;
				FinSi
			FinMientras
			
			Si !encontrado
				Escribir "No encontrado"
			SiNo
				Escribir "La persona es  ", personas[posicion,0] ," " personas[posicion,1]
				Escribir "Su DNI es ", personas[posicion,2]
				Escribir "Tiene ", personas[posicion,4], " a�os" 
				Escribir "Su telefono es ", personas[posicion,3] 
			FinSi
			
		2: OrdenarApellidos(personas, 8)
			Para i<-0 Hasta 7
				Para j<-0 hasta 4
					Mostrar personas[i,j], " " Sin Saltar
				FinPara
				Escribir ""
			FinPara
		De Otro Modo:
			Escribir "Elija una opcion correcta"
	FinSegun
	
FinProceso

SubProceso CargaDatos(personas)
    personas[5,0] = "Ana";
    personas[1,0] = "Camila";
    personas[2,0] = "Bruno";
    personas[3,0] = "Dardo";
    personas[4,0] = "Ernestina";
    personas[0,0] = "Fausto";
    personas[6,0] = "Jasmin";
    personas[7,0] = "Leonardo";
	
    personas[5,1] = "Martinez";
    personas[1,1] = "Noe";
    personas[2,1] = "Noe";
    personas[3,1] = "Pistilli";
    personas[4,1] = "Quesada";
    personas[0,1] = "Ramirez";
    personas[6,1] = "Sosa";
    personas[7,1] = "Tolosa";
	
    personas[5,2] = "17123456";
    personas[1,2] = "25789101";
    personas[2,2] = "39121314";
    personas[3,2] = "21151617";
    personas[4,2] = "33181920";
    personas[0,2] = "15212223";
    personas[6,2] = "40242526";
    personas[7,2] = "11272829";
	
    personas[5,3] = "+541141200011";
    personas[1,3] = "+543419485831";
    personas[2,3] = "+541145565789";
    personas[3,3] = "+541158637543";
    personas[4,3] = "+541158637543";
    personas[0,3] = "+543423444567";
    personas[6,3] = "+543402512345";
    personas[7,3] = "+541151234567";
	
    personas[5,4] = "56";
    personas[1,4] = "45";
    personas[2,4] = "26";
    personas[3,4] = "48";
    personas[4,4] = "35";
    personas[0,4] = "60";
    personas[6,4] = "25";
    personas[7,4] = "70";
FinSubProceso


SubProceso OrdenarApellidos(personas, cantPersonas)
	
	Definir i, j, posicion Como Entero
	Definir aux Como Caracter
	Definir cant_comparaciones Como Entero
	Para i<-0 Hasta cantPersonas-2 Hacer
		posicion <- i
		Para j<-i+1 Hasta cantPersonas-1 Hacer
			Si Concatenar(personas[j,1], personas[j,0]) < Concatenar(personas[posicion,1],personas[posicion,0]) Entonces
				posicion <- j
			FinSi
			cant_comparaciones=cant_comparaciones + 1
		FinPara
		Para j<-0 hasta 4 Hacer
			aux <- personas[i,j]
			personas[i,j] <- personas[posicion,j]
			personas[posicion,j] <- aux
		FinPara
	FinPara
	
FinSubProceso


