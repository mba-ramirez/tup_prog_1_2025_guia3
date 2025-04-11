Proceso  siprimo
    Definir nume, i, divisores Como Entero;
    divisores <- 0;
    Escribir "Ingrese un número entero:";
    Leer nume;
    Para i <- 1 Hasta nume hacer;
        Si nume MOD i = 0 Entonces
            divisores <- divisores + 1;
        FinSi
    FinPara
    Si divisores = 2 Entonces
        Escribir nume, " es un número primo.";
    Sino
        Escribir nume, " NO es un número primo.";
    FinSi
FinProceso
