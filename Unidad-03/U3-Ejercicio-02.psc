Proceso U2_Ejercicio_02
	
	Definir l1,l2,l3 Como Entero;
	
	Escribir "Vamos a determinar el tipo de triangulo segun sus lados!";
	Escribir " ";
	
	Escribir "Ingrese el valor del lado 1: ";
	Leer l1
	Escribir "Ingrese el valor del lado 2: ";
	Leer l2
	Escribir "Ingrese el valor del lado 3: ";
	Leer l3
	
	Si(l1=l2 & l2=l3)
		Escribir "El triangulo es un triangulo de tipo Equilatero.(TODOS SUS LADOS IGUALES)";
	SiNo
		Si(l1=l2 O l1=l3 O l2=l3)
			Escribir "El triangulo es un triangulo de tipo Isoceles.(DOS LADOS IGUALES)";
		SiNo
			Escribir "El triangulo es un triangulo de tipo Escaleno.(TODOS SUS LADOS DISTINTOS)";
		FinSi
	FinSi
	
FinProceso
