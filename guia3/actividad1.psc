Algoritmo loteria
	Definir num,cantPar,acumImpar,mayor,menor,contador Como Entero;
	Definir PromImpar Como Real;
	cantPar <- 0;
	acumImpar <- 0;
	PromImpar <- 0;
	Escribir 'ingresar el primer numero para el sorteo';
	Leer num;
	mayor <- num;
	menor <- num;
	Si num MOD 2=0 Entonces
		cantPar <- cantPar+1;
	SiNo
		cantImpar <- cantImpar+1;
		acumImpar <- acumImpar+num;
	FinSi
	Para contador<-1 Hasta 19 Hacer
		Escribir 'ingresar el siguiente numero para el sorteo';
		Leer num;
		Si num>mayor Entonces
			mayor <- num;
		FinSi
		Si num<menor Entonces
			menor <- num;
		FinSi
		Si num MOD 2=0 Entonces
			cantPar <- cantPar+1;
		SiNo
			cantImpar <- cantImpar+1;
			acumImpar <- acumImpar+num;
		FinSi
	FinPara
	Si CantImpar<>0 Entonces
		PromImpar = acumImpar/cantImpar;
		Escribir "La cantidad de impares fue de ",cantImpar,;
		Escribir "El promedio de la los impares ingresados fue de ",PromImpar,;
	FinSi
	Escribir "La cantidad de pares fue de ",CantPar,;
	Escribir "El menor numero ingresado fue el ",menor,;
	Escribir "El mayor numero ingresado fue el ",mayor,;
FinAlgoritmo
