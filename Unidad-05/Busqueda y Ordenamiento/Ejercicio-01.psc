Proceso Ejercicio_01
	Definir personas, dni Como Caracter;
	Definir i,pos Como Entero;
	Dimension personas[8,5];
	
	CargaDatos(personas);
	
	Escribir "Ingrese el DNI para buscar en nuestra base de datos";
	Leer dni;
	
	i<-0
	pos<-0
	
	Mientras i<=7
		Si personas[i,2]==dni
			Escribir "El DNI se ha encontrado en la posicion: ", i+1;
			pos<-i;
			i<-7
		FinSi
		i<-i+1
	FinMientras
	
	Si pos==0
		Escribir "No se ha encontrado el DNI solicitado";
	SiNo
		Escribir "Nombre: ",personas[pos,0];
		Escribir "Apellido: ",personas[pos,1];
		Escribir "DNI: ", personas[pos,2];
		Escribir "Telefono: ", personas[pos,3];
		Escribir "Edad: ", personas[pos,4];
		
	FinSi
	
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
