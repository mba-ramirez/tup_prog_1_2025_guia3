Proceso listanota
    Definir nota, totalnotas, suma, aprobados, desaprobados Como Entero;
    Definir muy_bueno, bueno, regular, insuficiente Como Entero;
    Definir porcentaje_muy_bueno, porcentaje_bueno, porcentaje_regular, porcentaje_insuficiente Como Real;
    totalnotas <- 0;
    suma <- 0;
    aprobados <- 0;
    desaprobados <- 0;
    muy_bueno <- 0;
    bueno <- 0;
    regular <- 0;
    insuficiente <- 0;
    Escribir "Ingrese notas del 0 al 10 (ingrese -1 para finalizar):";
    Leer nota;
    Mientras nota <> -1 Hacer
        Si nota >= 0 Y nota <= 10 Entonces
            totalnotas <- totalnotas + 1;
            suma <- suma + nota;
            Si nota >= 6 Entonces
                aprobados <- aprobados + 1;
            Sino
                desaprobados <- desaprobados + 1;
            FinSi
            Si nota >= 8 Entonces
                muy_bueno <- muy_bueno + 1;
            Sino
                Si nota >= 6 Entonces
                    bueno <- bueno + 1;
                Sino
                    Si nota >= 4 Entonces
                        regular <- regular + 1;
                    Sino
                        insuficiente <- insuficiente + 1;
                    FinSi
                FinSi
            FinSi
        Sino
            Escribir "Nota inválida. Ingrese un valor entre 0 y 10, o -1 para terminar.";
        FinSi
        Leer nota;
    FinMientras
    Si totalnotas > 0 Entonces
        porcentaje_muy_bueno <- (muy_bueno * 100) / totalnotas;
        porcentaje_bueno <- (bueno * 100) / totalnotas;
        porcentaje_regular <- (regular * 100) / totalnotas;
        porcentaje_insuficiente <- (insuficiente * 100) / totalnotas;
        Escribir "Cantidad de notas: ", totalnotas;
        Escribir "Promedio: ", suma / totalnotas;
        Escribir "Cantidad de aprobados: ", aprobados;
        Escribir "Cantidad de no aprobados: ", desaprobados;
        Escribir "Porcentaje Muy Bueno (8 o más): ", porcentaje_muy_bueno, "%";
        Escribir "Porcentaje Bueno (6 o 7): ", porcentaje_bueno, "%";
        Escribir "Porcentaje Regular (4 o 5): ", porcentaje_regular, "%";
        Escribir "Porcentaje Insuficiente (3 o menos): ", porcentaje_insuficiente, "%";
    Sino
        Escribir "No se ingresaron notas válidas.";
    FinSi
FinProceso