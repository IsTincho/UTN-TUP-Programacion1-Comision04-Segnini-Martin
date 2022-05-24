Proceso Ejercicio_7_Parcial

	Definir cantProducto Como Entero
	Definir importe, importeTotal Como Real
	Definir salir Como Logico
	salir=Falso;
	
	Repetir
		
		Repetir //Validar el monto igual o mayor a 0
			Escribir "Ingrese el monto del producto (0 para finalizar la carga)";
			Leer  importe;
		Mientras Que importe<0
		Si importe=0//Comparar si es igual a 0 para finalizar la carga
			salir=Verdadero
		SiNo
			salir=Falso
			
			Escribir "Ingrese la cantidad";
			Repetir //Validar la cantidad mayor a 0
				Leer cantProducto;
			Hasta Que cantProducto>0
			importeTotal<-importeTotal+(importe*cantProducto); //Calculo del total
		FinSi
		
	Hasta Que salir=Verdadero
	
	Escribir "Total: $", importeTotal;
	
	
FinProceso




