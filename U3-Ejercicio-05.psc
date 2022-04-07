Proceso U3_Ejercicio_05
	
	Definir dia, mes, anio Como Entero;
	Definir diaA, mesA, anioA Como Entero;
	
	diaA<-5;
	mesA<-4;
	anioA<-2022;
	
	Definir edad Como Entero;
	Escribir "*** NOTA ***";
	Escribir "La edad se va a calcular con el dia de la fecha: 5/4/2022";
	Escribir "Ingrese el dia, mes y año en el que nació (RESPETANDO ESTE ORDEN)";
	Escribir "El formato de la fecha seria el siguiente: dd/mm/aaaa";
	Leer dia;
	Leer mes;
	Leer anio;
	Escribir "Usted nació: ", dia,"/",mes,"/",anio;
	
	//CALCULAR EDAD
	Escribir "Vamos a calcular su edad."
	
	Si (mesA>mes)O(mesA=mes y diaA>=dia)
		edad<-anioA-anio
	SiNo
		edad<-anioA-anio-1
	FinSi
	
	Escribir "Procesando... ... ..."
	Escribir "Su edad es de: ", edad, " años.";
FinProceso
