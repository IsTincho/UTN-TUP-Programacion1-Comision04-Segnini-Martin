Proceso TP_Integrador
    
    Definir cantEmpleados,op,i,j Como Entero
    Definir lista Como Caracter
    
    Escribir "Ingrese la cantidad de empleados a ingresar."
    Leer cantEmpleados
    Dimension lista[cantEmpleados,4]
    //Definir i Como Entero
    //Definir lista Como Caracter
    //Dimension lista[4,cantEmpleados]
    
    Para i<-0 hasta cantEmpleados-1
        
        Escribir "Ingrese el empleado ", i
        Escribir "Ingrese apellido y nombre:"
        Leer lista[i,0]
		Escribir "Ingrese CUIL:"
		
		Leer cuil
		validado=Falso
		Repetir
			Si Longitud(cuil)<10 o Longitud(cuil)>11
				Escribir "Error, ingrese el cuil nuevamente (FUERA DE RANGO)"
				Leer cuil
			SiNo
				subCuil<-Subcadena(cuil,0,1)
				Si (ConvertirANumero(subCuil)=20) o (ConvertirANumero(subCuil)>=23 y ConvertirANumero(subCuil)<=27)
					lista[i,1]<-cuil
					validado=Verdadero
				SiNo
					Escribir "Error, ingrese un CUIL valido (DEBE EMPEZAR CON: 20,23,24,25,26 o 27"
					Leer cuil
				FinSi
			FinSi
		Hasta Que validado=Verdadero
		
        Escribir "Ingrese edad:"
        Leer lista[i,2]
        Escribir "Ingrese telefono:"
        Leer lista[i,3]
        Escribir " "
        
    FinPara
    
    Repetir
        
        Escribir "1. Ver empelado"
        Escribir "2. Editar teléfono"
        Escribir "3. Mostrar lista de empleados ordenada por Apellido y nombre"
        Escribir "4. Mostrar lista de empleados ordenada por edad"
        Escribir "5. Salir."
        Leer op
        
        Segun op Hacer
            1:
                verEmpleado(lista, canTempleados)
            2:  
				modificarTelefono(lista,cantEmpleados)
            3:
                ordenarApellido(lista, cantEmpleados)
                mostrarInfo(lista, cantEmpleados)
            4:
                ordenarEdad(lista, cantEmpleados)
                mostrarInfo(lista, cantEmpleados)
            5:
                Escribir "Saliendo..."
            De Otro Modo:
                Escribir "Error, opción inválida."
        Fin Segun
        
    Mientras que op<>5
    
FinProceso

SubProceso mostrarInfo(lista, cantEmpleados)
    Definir i,j Como Entero
    Para j<-0 Hasta cantEmpleados-1
        Para i<-0 hasta 3
            Mostrar lista[j,i] " "
        FinPara
        Escribir " "
    FinPara
FinSubProceso

SubProceso ordenarEdad(lista, cantEmpleados)
    
    Definir i,j,pos_menor Como Entero
    Definir aux Como Caracter
    
    Para i<-0 hasta cantEmpleados-2
        pos_menor<-i
        Para j<-i+1 hasta cantEmpleados-1 
            
            Si ConvertirANumero(lista[j,2]) > ConvertirANumero(lista[pos_menor,2]) 
                pos_menor<-j
            FinSi
            
        FinPara
        Para j<-0 hasta 3
            aux<-lista[i,j]
            lista[i,j]<-lista[pos_menor,j]
            lista[pos_menor,j]<-aux
        FinPara
        
    FinPara
    
    
    
FinSubProceso



SubProceso ordenarApellido(lista, cantEmpleados)
    
    Definir i,j,pos_menor Como Entero
    Definir aux Como Caracter
    
    Para i<-0 hasta cantEmpleados-2
        pos_menor<-i
        Para j<-i+1 hasta cantEmpleados-1 
            
            Si lista[j,0] < lista[pos_menor,0]
                pos_menor<-j
            FinSi
            
        FinPara
        Para j<-0 hasta 3
            aux<-lista[i,j]
            lista[i,j]<-lista[pos_menor,j]
            lista[pos_menor,j]<-aux
        FinPara
		
    FinPara
    
	
    
FinSubProceso


SubProceso verEmpleado(lista, cantEmpleados)
	
	Definir encontrado Como Logico
	Definir cuil Como Caracter
	Definir i, posicion Como Entero
	
	Leer cuil
	
	i = 0;
	Mientras i <= cantEmpleados y !encontrado Hacer
		Si lista[1,i] = cuil Entonces
			encontrado=Verdadero
			posicion=i
		SiNo
			i = i + 1;
		FinSi
	FinMientras
	
	Si !encontrado
		Escribir "No existe empleado con ese cuil"
	SiNo
		Escribir "La persona es  ", lista[0,posicion]
		Escribir "Cuil " lista[1,posicion]
		Escribir "Edad ", lista[2,posicion]
		Escribir "Su telefono es ", lista[3,posicion] 
	FinSi
	
	
	
FinSubProceso
	
    SubProceso modificarTelefono(lista,cantEmpleados)
		Definir encontrado Como Logico
		Definir CuilBuscar Como Caracter
		Definir i Como Entero
		Definir posicion Como Entero
		
		Escribir "Ingrese el cuil del empleado para modificar su telefono"
		Leer CuilBuscar
		
			Para i<-0 Hasta cantEmpleados -1 Hacer
				Si lista[i,1] = CuilBuscar
					encontrado = Verdadero
					Escribir "Fue encontrado"
					Escribir " "
					posicion= i
					Escribir "Ingrese el nuevo numero de telefono"
					Leer lista[posicion,3]
					Escribir "Se le ha cambiado al numero a ", lista[i,0], " El nuevo numero es ", lista[i,3]
				SiNo
					encontrado=Falso
				FinSi
			FinPara
		
		Si encontrado = Falso
			Escribir "No existe empleado con ese cuil."
		FinSi

	
FinSubProceso