Proceso U3_Ejercicio_03
	
	Definir peso Como Real;
	Definir boton Como Entero;
	
	Escribir "Ingrese un peso en KG:";
	Leer peso
	
	Escribir "Determine a que desea convertir sus: ", peso "Kg";
	Escribir "Presione 1 para convertir a GRAMOS.";
	Escribir "Presione 2 para convertir a TONELADAS.";
	Escribir "Presione 3 para convertir a LIBRAS.";
	Escribir "Presione 4 para convertir a ONZAS.";
	Leer boton
	
	Segun boton
		Opcion 1:
			Escribir "Usted ha seleccionado gramos.";
			Escribir peso, "Kg es igual a: ", peso*1000, "g.";
		Opcion 2:
			Escribir "Usted ha seleccionado toneladas.";
			Escribir peso, "Kg es igual a: ", peso/1000, "t.";
		Opcion 3:
			Escribir "Usted ha seleccionado libras.";
			Escribir peso, "Kg es igual a: ", peso*2.205, "lb.";
		Opcion 4:
			Escribir "Usted ha seleccionado onzas.";
			Escribir peso, "Kg es igual a: ", peso*35.274, "oz.";
		De Otro Modo:
			Escribir "Usted ha ingresado un boton incorrecto";
	FinSegun
	
FinProceso
