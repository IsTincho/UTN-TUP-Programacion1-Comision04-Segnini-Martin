Proceso U3_Ejercicio_08
	
	//Defino mis variables, donde A1, 2 y 3, son los angulos, sumA permite averiguar el angulo 3
	//Y por ultimo comprobante me sirve para verificar que la suma de los 3 da 180º
	//Para ver que tipo de angulo voy a comparar cada uno de los 3 angulos contra 90
	//(Es la mas larga creo yo pero tambien la mas facil de entender/explicar)
	
	Definir A1,A2,sumA,A3,comprobante Como Entero
	Definir tipoA Como Caracter
	
	//Pido x teclado Angulo 1 y 2
	Escribir "Ingrese el angulo 1";
	Leer A1;
	Escribir "Ingrese el angulo 2";
	Leer A2;
	//Operaciones basicas para determinar
	sumA<-A1+A2
	A3<-180-sumA
	comprobante<-A1+A2+A3
	
	//Tipo de triangulo segun sus lados
	
	Si (A1=90 o A2=90 o A3=90)
		tipoA<-"Triangulo rectangulo";
	SiNo
		Si(A1<90 y A2<90 y A3<90)
			tipoA<-"Triangulo acutangulo";
		SiNo
			tipoA<-"Triangulo Obtusangulo";
		FinSi
	FinSi
	
	//Final
	
	Si (A1>=180 o A1<1) o (A2>=180 o A2<1) o (comprobante<>180)
		
		Escribir "Error, uno de los angulos se encuentra fuera del parametro";
		
	SiNo
		
		Escribir "La suma de ambos angulos ingresados es: ", comprobante;
		Escribir "Lado 1: ", A1;
		Escribir "Lado 2: ", A2;
		Escribir "Lado 3: ", A3;
		Escribir "Nuestro triangulo, es un: ", tipoA;
		
	FinSi
	
FinProceso
