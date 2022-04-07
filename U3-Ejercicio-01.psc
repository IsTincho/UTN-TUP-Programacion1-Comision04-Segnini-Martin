Proceso U2_Ejercicio_01
	
	Definir num Como Entero;
	Definir resto Como Entero;
	
	Escribir "Ingrese un numero positivo"
	Leer num
	resto<-num MOD (2);
	
	Si num>=0 Entonces
		Si num=0 Entonces
			Escribir "El numero ingresado es igual a 0."
		SiNo
			Si resto=0 Entonces
				Escribir num, " es un numero positivo par.";
			SiNo
				Escribir num, " es un numero positivo impar.";
			FinSi
		FinSi
	SiNo
		Escribir "El numero ingresado es negativo."
	FinSi
	
FinProceso
