Proceso siprimo
    Definir num1, num2, aux, nume, i, divisores Como Entero;
    Escribir "Ingrese el primer número del rango:";
    Leer num1;
    Escribir "Ingrese el segundo número del rango:";
    Leer num2;
    Si num1 > num2 Entonces
        aux <- num1;
        num1 <- num2;
        num2 <- aux;
    FinSi
    Escribir "Números primos en el rango:";
    Para nume <- num1 Hasta num2 Hacer
        divisores <- 0;
        Para i <- 1 Hasta nume Hacer
            Si nume MOD i = 0 Entonces
                divisores <- divisores + 1;
            FinSi
        FinPara
        Si divisores = 2 Entonces
            Escribir nume;
        FinSi
    FinPara
FinProceso